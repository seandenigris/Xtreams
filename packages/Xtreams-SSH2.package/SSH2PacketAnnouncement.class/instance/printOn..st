printing
printOn: stream

	stream nextPutAll: (incoming ifTrue: [ '<- ' ] ifFalse: [ '-> ' ]);
		nextPutAll: self label;
		print: (number inject: 0 into: [ :total :byte | (total bitShift: 8) + byte ]).
	size ifNotNil: [ stream nextPutAll: ' ['; print: size; nextPut: $] ]