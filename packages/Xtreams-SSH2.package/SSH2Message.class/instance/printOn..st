printing
printOn: stream

	stream nextPutAll: (incoming ifTrue: [ '<- ' ] ifFalse: [ '-> ' ]);
		nextPutAll: self class name