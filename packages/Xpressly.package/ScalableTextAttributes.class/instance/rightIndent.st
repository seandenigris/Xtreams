accessing
rightIndent

	^scale isNil
		ifTrue: [ rightIndent ]
		ifFalse: [ rightIndent * scale x ]