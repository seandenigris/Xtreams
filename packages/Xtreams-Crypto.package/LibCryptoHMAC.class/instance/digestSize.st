accessing
digestSize

	^algorithm ifNil: [ 0 ] ifNotNil: [ algorithm memberAt: #md_size ]