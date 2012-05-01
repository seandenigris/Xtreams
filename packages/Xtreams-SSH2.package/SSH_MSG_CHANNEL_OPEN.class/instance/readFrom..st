accessing
readFrom: stream

	| type |
	super readFrom: stream.
	type := stream getStringEncoding: #ascii.
	id := stream getUint32.
	windowSize := stream getUint32.
	maxPacketSize := stream getUint32.
	request := SSH2ChannelOpenRequest new: type.
	request readFrom: stream