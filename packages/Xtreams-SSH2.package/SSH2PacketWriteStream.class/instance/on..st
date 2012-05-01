initialize-release
on: aStream

	super on: aStream.
	destinationPlain := destinationPackets := aStream.
	packetNumber := InterpretedBytes new: 4.
	buffer := ElasticBuffer new: DefaultBufferSize class: ByteArray