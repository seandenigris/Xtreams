accessing
readFrom: stream

	algorithm := stream getStringEncoding: #ascii.
	key := stream getString.
	host := stream getStringEncoding: #ascii.
	user := stream getStringEncoding: #utf8.
	signature := stream getString