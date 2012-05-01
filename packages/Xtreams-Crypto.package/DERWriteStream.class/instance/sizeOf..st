private-sizing
sizeOf: anObject

	^(anObject isKindOf: Association)
		ifTrue: [ self perform: (sizes at: anObject key) with: anObject value ]
		ifFalse: [ self perform: (sizes at: anObject class) with: anObject ].