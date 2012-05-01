private - packet processing
writePacket

	| paddingSize |
	self setDestination: destinationPackets.
	macSize > 0 ifTrue: [destinationPackets update: 4 from: packetNumber at: 1].
	payloadSize := buffer readSize.
	paddingSize := blockSize - ((payloadSize + 5) \\ blockSize).
	paddingSize < 4 ifTrue: [ paddingSize := paddingSize + blockSize ].
	self uint32 put: payloadSize + paddingSize + 1.
	destination put: paddingSize.
	destination write: buffer.
	destination write: paddingSize from: random.
	self writeMAC.
	destinationPlain flush.
	connection announcePacketEnd: self.
	self incrementPacketNumber.
	self setDestination: destinationPayload.