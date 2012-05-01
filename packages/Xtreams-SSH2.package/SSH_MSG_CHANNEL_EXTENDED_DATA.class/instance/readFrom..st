accessing
readFrom: stream

	super readFrom: stream.
	id := stream getUint32.
	type := stream getUint32.
	data := stream getString.