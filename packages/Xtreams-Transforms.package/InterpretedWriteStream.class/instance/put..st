accessing
put: anObject

	operation value: cache value: 1 value: anObject.
	destination write: elementSize from: cache at: 1.
	^anObject