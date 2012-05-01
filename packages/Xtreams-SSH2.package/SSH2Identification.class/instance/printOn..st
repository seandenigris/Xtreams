printing
printOn: stream

	stream nextPutAll: (incoming ifTrue: [ '<- ' ] ifFalse: [ '-> ' ]);
		nextPutAll: 'identification [';
		print: version; nextPut: $].