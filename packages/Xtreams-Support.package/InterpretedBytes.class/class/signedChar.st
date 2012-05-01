type descriptions
signedChar

	^(Array with: 1 with: Array with: [:b :i | b signedByteAt: i] with: [:b :i :o | b signedByteAt: i put: o])