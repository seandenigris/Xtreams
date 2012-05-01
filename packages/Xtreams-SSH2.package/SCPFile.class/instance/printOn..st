printing
printOn: stream

	stream nextPutAll: (incoming ifTrue: [ '<- ' ] ifFalse: [ '-> ' ]);
		nextPutAll: self class name; space.
	(path respondsTo: #asString) ifTrue: [ stream nextPutAll: path asString ] ifFalse: [ stream print: path ].
	stream space; print: name;
		space;
		print: length