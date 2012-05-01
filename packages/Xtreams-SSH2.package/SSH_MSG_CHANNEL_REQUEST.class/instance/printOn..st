printing
printOn: stream

	super printOn: stream.
	stream space; nextPut: (wantReply ifTrue: [$?] ifFalse: [$!]); space.
	request printOn: stream