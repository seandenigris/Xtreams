accessing
readFrom: stream

	super readFrom: stream.
	hostKey := SSH2HostKey readFrom: (stream limiting: stream uint32 get) ssh2Marshaling.
	f := stream getMpint.
	signature := stream getString reading ssh2Marshaling .
	(signature getStringEncoding: #ascii) = hostKey typeID ifFalse: [ self error: 'key/signature type mismatch' ].
	signature := signature getString.