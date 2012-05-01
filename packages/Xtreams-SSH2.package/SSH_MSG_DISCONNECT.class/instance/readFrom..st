accessing
readFrom: stream

	super readFrom: stream.
	code := stream getUint32.
	description := stream getStringEncoding: #utf8.
	language := stream getStringEncoding: #ascii.