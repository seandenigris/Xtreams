accessing
exponent

	^exponent ifNil: [
		[ 	exponent := connection random read: p digitLength.
			exponent := exponent changeClassTo: LargePositiveInteger.
			exponent > 0 and: [ exponent + 1 < p ]
		] whileFalse.
		exponent changeClassTo: ByteArray.
		exponent := exponent reverse "big-endian" ]