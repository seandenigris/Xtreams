accessing
put: anObject
	| free |
	free := length - position.
	free < 1 ifTrue: [self resizeTo: length + 1].
	destination at: position put: anObject.
	position := position + 1