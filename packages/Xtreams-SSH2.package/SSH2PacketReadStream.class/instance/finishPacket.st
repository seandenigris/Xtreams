private - packet processing
finishPacket

	sourcePackets read: paddingSize.
	self checkIntegrity.
	connection announcePacketEnd: self.
	self incrementPacketNumber