accessing
lineGrid

	^scale isNil
		ifTrue: [ lineGrid ]
		ifFalse: [ lineGrid * scale y ]