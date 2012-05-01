accessing
restIndent

	^scale isNil
		ifTrue: [ restIndent ]
		ifFalse: [ restIndent * scale x ]