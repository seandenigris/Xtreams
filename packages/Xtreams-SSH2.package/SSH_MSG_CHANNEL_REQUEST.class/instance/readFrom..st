accessing
readFrom: stream

	| requestType |
	super readFrom: stream.
	id := stream getUint32.
	requestType := stream getStringEncoding: #ascii.
	wantReply := stream getBoolean.
	request := SSH2ChannelRequest new: requestType.
	request readFrom: stream