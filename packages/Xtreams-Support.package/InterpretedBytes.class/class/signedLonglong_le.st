type descriptions
signedLonglong_le

	self isBigEndian ifFalse: [ ^self signedLonglong ].
	^(Array with: 8 with: Array with: [:b :i | b longLongAt: i bigEndian: false] with: [:b :i :o | b longLongAt: i put: o bigEndian: false])