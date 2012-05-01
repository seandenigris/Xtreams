type descriptions
signedLong_le
	
	self isBigEndian ifFalse: [ ^self signedLong ].
	^(Array with: 4 with: Array with: [:b :i | b longAt: i bigEndian: false ] with: [:b :i :o | b longAt: i put: o bigEndian: false])