accessing
firstIndent

	^scale isNil
		ifTrue: [ firstIndent ]
		ifFalse: [ firstIndent * scale x ]