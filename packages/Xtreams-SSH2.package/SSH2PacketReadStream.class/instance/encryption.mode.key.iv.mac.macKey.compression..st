initialize-release
encryption: algorithm mode: mode key: aKey iv: anIV mac: macAlgorithm macKey: macKey compression: compression

	| firstPacket limiter |
	sourcePackets == sourcePlain ifFalse: [
		self error: 'Cannot reconfigure yet, need to figure out how to swap the crypto layers, without closing!' ].
	sourcePayload ifNotNil: [ self finishPacket ].
	sourcePackets := sourcePlain.
	algorithm = 'none' ifFalse: [
		"limiter is to prevent the decryption layer from reading past the end of encrypted content (and into the mac)"
		limiter := sourcePackets := sourcePackets limiting: 8.
		sourcePackets := sourcePackets decrypting: algorithm mode: mode key: aKey iv: anIV.
		"cipher block size might be more than 8, so we need to reset the limit again just in case"
		limiter on: limiter source limit: (sourcePackets blockSize max: 8) ].
	macSize := 0.
	macAlgorithm = 'none' ifFalse: [
		sourcePackets := sourcePackets hashing: macAlgorithm key: macKey.
		macSize := sourcePackets digestSize ].
	firstPacket := true.
	sourcePayload :=
		StitchReadStream
			on: [	firstPacket ifTrue: [ firstPacket := false ] ifFalse: [ self finishPacket ].
					self startPacket.
					"now that we know the packetSize reset the limiter again to the correct size"
					limiter ifNotNil: [ limiter on: limiter source limit: packetSize + 4 ].
					sourcePackets limiting: packetSize - paddingSize - 1
				] reading
			contentsSpecies: ByteArray.
	compression = 'zlib' ifTrue: [ sourcePayload := sourcePayload compressing ].
	self setSource: sourcePayload.