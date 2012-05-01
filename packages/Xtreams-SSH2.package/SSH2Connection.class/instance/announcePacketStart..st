private-accessing
announcePacketStart: stream

	self configuration announcePackets ifTrue: [ self announce: stream packetStartAnnouncement ]