accessing
readFrom: stream

	super readFrom: stream.
	service := stream getStringEncoding: #ascii