type descriptions
unsignedLong_le
	
	self isBigEndian ifFalse: [ ^self unsignedLong ].
	^(Array with: 4 with: DwordArray with: [:b :i | b unsignedLongAt: i bigEndian: false ] with: [:b :i :o | b unsignedLongAt: i put: o bigEndian: false])