type descriptions
unsignedLong_be
	
	self isBigEndian ifTrue: [ ^self unsignedLong ].
	^(Array with: 4 with: DwordArray with: [:b :i | b unsignedLongAt: i bigEndian: true ] with: [:b :i :o | b unsignedLongAt: i put: o bigEndian: true])