accessing
readFrom: stream

	super readFrom: stream.
	message := stream getStringEncoding: #utf8.
	language := stream getStringEncoding: #ascii.