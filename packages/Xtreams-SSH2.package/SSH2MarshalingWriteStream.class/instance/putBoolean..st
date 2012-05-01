marshaling
putBoolean: aBoolean

	destination put: (aBoolean ifTrue: [ 1 ] ifFalse: [ 0 ])