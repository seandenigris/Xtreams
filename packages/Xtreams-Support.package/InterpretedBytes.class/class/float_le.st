type descriptions
float_le

	self isBigEndian ifFalse: [ ^self float ].
	^(Array with: 4 with: "FloatArray" Array with: [:b :i | b floatAt: i bigEndian: false] with: [:b :i :o | b floatAt: i put: o bigEndian: false])