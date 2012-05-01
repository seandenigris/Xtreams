accessing
readFrom: stream

	address := stream getStringEncoding: #ascii.
	port := stream getUint32