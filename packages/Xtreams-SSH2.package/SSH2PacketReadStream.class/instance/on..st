initialize-release
on: aReadStream

	super on: aReadStream.
	packetNumber := InterpretedBytes new: 4.
	sourcePlain := sourcePackets := aReadStream.