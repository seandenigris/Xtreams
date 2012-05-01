accessing
readFrom: stream

	super readFrom: stream.
	id := stream getUint32.