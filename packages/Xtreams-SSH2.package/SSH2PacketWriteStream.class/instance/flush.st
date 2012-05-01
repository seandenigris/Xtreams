initialize-release
flush

	buffer readSize > 0 ifFalse: [^self].
	self writePacket.
	destinationPayload flush