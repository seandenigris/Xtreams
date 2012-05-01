accessing
readFrom: stream

	singleConnection := stream getBoolean.
	authentication := stream getStringEncoding: #ascii.
	cookie := stream getStringEncoding: #ascii.
	screen := stream getUint32