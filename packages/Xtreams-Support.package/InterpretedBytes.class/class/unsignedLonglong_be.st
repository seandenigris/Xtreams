type descriptions
unsignedLonglong_be

	self isBigEndian ifTrue: [ ^self unsignedLonglong ].
	^(Array with: 8 with: Array with: [:b :i | b unsignedLongLongAt: i bigEndian: true] with: [:b :i :o | b unsignedLongLongAt: i put: o bigEndian: true])