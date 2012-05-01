accessing
readFrom: stream

	super readFrom: stream.
	user := stream getStringEncoding: #utf8.
	service := stream getStringEncoding: #ascii.
	authentication := SSH2Authentication readFrom: stream.