accessing
put: anObject
	
	destination size - position < 1 ifTrue: [destination growToAtLeast: position + 1].
	position := position + 1.
	destination at: position put: anObject.
	position > length ifTrue: [length := position].
	^anObject