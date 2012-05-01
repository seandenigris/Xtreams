private-sizing
sizeOfLength: length

	^length < 128
		ifTrue: [ 1 ]
		ifFalse: [ length digitLength + 1 ]