accessing
digest

	^digest ifNil: [ | copy |
		copy := hash copy.
		[ copy finish ] ensure: [ copy release ] ]