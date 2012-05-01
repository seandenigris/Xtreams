initialize-release
encryption: algorithm mode: mode key: aKey iv: anIV mac: macAlgorithm macKey: macKey compression: compression

	| firstPacket |
	destinationPackets == destinationPlain ifFalse: [
		self error: 'Cannot reconfigure yet, need to figure out how to swap the crypto layers, without closing!' ].
	destinationPackets := destinationPlain.
	blockSize := 8.
	algorithm = 'none' ifFalse: [
		destinationPackets := destinationPackets encrypting: algorithm mode: mode key: aKey iv: anIV.
		blockSize := destinationPackets blockSize max: 8 ].
	macSize := 0.
	macAlgorithm = 'none' ifFalse: [
		destinationPackets := destinationPackets hashing: macAlgorithm key: macKey.
		macSize := destinationPackets digestSize ].
	firstPacket := true.
	destinationPayload :=
		StitchWriteStream
			on:	[	"If there's stuff in the buffer, we're here because we hit the packet limit and need to write the packet."
					buffer readSize > 0 ifTrue: [ self writePacket ].
					firstPacket ifTrue: [ firstPacket := false ] ifFalse: [
						"If we're starting new packet, we need to reset the HMAC stream (if present)"
						macSize > 0 ifTrue: [ destinationPackets reset ] ].
					connection announcePacketStart: self.
					buffer writing limiting: buffer cacheSize
				] reading
			contentsSpecies: ByteArray.
	compression = 'zlib' ifTrue: [ destinationPayload := destinationPayload compressing ].
	self setDestination: destinationPayload