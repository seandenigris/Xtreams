type descriptions
signedShort_be

	self isBigEndian ifTrue: [ ^self signedShort ].
	^Array with: 2 with: Array with: [:b :i | b shortAt: i bigEndian: true ] with: [:b :i :o | b shortAt: i put: o bigEndian: true ]