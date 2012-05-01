accessing
readFrom: stream

	| algorithm |
	super readFrom: stream.
	algorithm := stream getStringEncoding: #ascii.
	key := SSH2HostKey readFrom: stream getString reading ssh2Marshaling.