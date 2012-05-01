accessing
baseline

	^scale isNil
		ifTrue: [ baseline ]
		ifFalse: [ baseline * scale y ]