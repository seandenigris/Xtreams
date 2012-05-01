accessing
readFrom: stream

	super readFrom: stream.
	always_display := stream getBoolean.
	message := stream getStringEncoding: #utf8.
	language := stream getStringEncoding: #ascii.