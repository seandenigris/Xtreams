type descriptions
signedLong_be
	
	self isBigEndian ifTrue: [ ^self signedLong ].
	^(Array with: 4 with: Array with: [:b :i | b longAt: i bigEndian: true ] with: [:b :i :o | b longAt: i put: o bigEndian: true])