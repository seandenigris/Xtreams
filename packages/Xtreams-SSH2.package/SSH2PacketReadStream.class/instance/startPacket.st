private - packet processing
startPacket

	self setSource: sourcePackets.
	macSize > 0 ifTrue: [sourcePackets update: 4 from: packetNumber at: 1].
	packetSize := self uint32 get.
	paddingSize := source get.
	self setSource: sourcePayload.
	connection announcePacketStart: self