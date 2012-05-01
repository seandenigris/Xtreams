accessing
readFrom: stream

	super readFrom: stream.
	id := stream getUint32.
	reason := stream getUint32.
	description :=  stream getStringEncoding: #utf8.
	language := stream getStringEncoding: #ascii.