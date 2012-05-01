accessing
readFrom: stream

	| includesSignature |
	includesSignature := stream getBoolean.
	algorithm := stream getStringEncoding: #ascii.
	key := SSH2HostKey readFrom: stream getString reading ssh2Marshaling.
	includesSignature ifTrue: [
		signature := stream getString reading ssh2Marshaling .
		(signature getStringEncoding: #ascii) = key typeID ifFalse: [ self error: 'key/signature type mismatch' ].
		signature := signature getString ]