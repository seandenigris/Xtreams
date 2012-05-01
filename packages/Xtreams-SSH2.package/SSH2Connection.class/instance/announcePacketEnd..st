private-accessing
announcePacketEnd: stream

	self configuration announcePackets ifTrue: [ self announce: stream packetEndAnnouncement ]