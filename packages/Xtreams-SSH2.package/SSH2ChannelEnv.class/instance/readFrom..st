accessing
readFrom: stream

	name := stream getStringEncoding: #ascii.
	value := stream getStringEncoding: #ascii.