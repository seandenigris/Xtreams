type descriptions
unsignedLonglong_le

	self isBigEndian ifFalse: [ ^self unsignedLonglong ].
	^(Array with: 8 with: Array with: [:b :i | b unsignedLongLongAt: i bigEndian: false] with: [:b :i :o | b unsignedLongLongAt: i put: o bigEndian: false])