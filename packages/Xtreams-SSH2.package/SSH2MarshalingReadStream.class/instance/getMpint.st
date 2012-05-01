marshaling
getMpint

	| size bytes |
	(size := self uint32 get) isZero ifTrue: [^0].
	bytes := source read: size.
	bytes := bytes reverse.
	^(bytes last bitAnd: 128) isZero
		ifTrue: [ (bytes changeClassTo: LargePositiveInteger) compressed ]
		ifFalse: [ | base |
			base := ByteArray new: size + 1.
			base at: size + 1 put: 1.
			base changeClassTo: LargeNegativeInteger.
			bytes changeClassTo: LargeNegativeInteger.
			base - bytes ]