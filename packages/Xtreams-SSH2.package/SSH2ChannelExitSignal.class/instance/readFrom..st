accessing
readFrom: stream

	name := stream getStringEncoding: #ascii.
	coreDumped := stream getBoolean.
	message := stream getStringEncoding: #utf9.
	language := stream getStringEncoding: #ascii.