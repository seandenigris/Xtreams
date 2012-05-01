instance creation
readFrom: stream

 	^(CodeToKey at: (stream getStringEncoding: #ascii)) new readFrom: stream