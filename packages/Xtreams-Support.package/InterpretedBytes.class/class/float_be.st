type descriptions
float_be

	self isBigEndian ifTrue: [ ^self float ].
	^(Array with: 4 with: "FloatArray" Array with: [:b :i | b floatAt: i bigEndian: true] with: [:b :i :o | b floatAt: i put: o bigEndian: true])