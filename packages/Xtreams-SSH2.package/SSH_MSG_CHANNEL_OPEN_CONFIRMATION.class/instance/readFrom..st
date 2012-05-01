accessing
readFrom: stream

	super readFrom: stream.
	id := stream getUint32.
	senderID := stream getUint32.
	windowSize := stream getUint32.
	maxPacketSize := stream getUint32.