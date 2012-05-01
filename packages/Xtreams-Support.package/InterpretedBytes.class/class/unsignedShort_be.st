type descriptions
unsignedShort_be

	self isBigEndian ifTrue: [ ^self unsignedShort ].
	^Array with: 2 with: WordArray with: [:b :i | b unsignedShortAt: i bigEndian: true ] with: [:b :i :o | b unsignedShortAt: i put: o bigEndian: true ]