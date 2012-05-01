printing
printOn: stream

	super printOn: stream.
	stream nextPutAll: (wantReply ifTrue: [' ? '] ifFalse: [' ! ']);
		nextPutAll: name; space;
		nextPutAll: address; nextPut: $:; print: port