instance creation
readFrom: stream

	^(Methods at: (stream getStringEncoding: #ascii)) new readFrom: stream