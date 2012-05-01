accessing
put: anObject

	(anObject isKindOf: Association)
		ifTrue: [ self perform: (actions at: anObject key) with: anObject value ]
		ifFalse: [ self perform: (actions at: anObject class) with: anObject ].
	^anObject