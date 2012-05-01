accessing
readFrom: stream

	super readFrom: stream.
	packet := stream getUint32