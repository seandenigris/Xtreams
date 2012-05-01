type descriptions
signedLonglong_be

	self isBigEndian ifTrue: [ ^self signedLonglong ].
	^(Array with: 8 with: Array with: [:b :i | b longLongAt: i bigEndian: true] with: [:b :i :o | b longLongAt: i put: o bigEndian: true])