marshaling
putMpint: anInteger

	| bitSize bytes encodedByteSize |
	anInteger isZero ifTrue: [ ^self string: #[] ].
	bitSize := anInteger negative ifTrue: [ anInteger negated highBit ] ifFalse: [ anInteger highBit ].
	encodedByteSize := bitSize // 8 + 1.
	anInteger positive
		ifTrue: [ | i byteSize |
			bytes := ByteArray new: encodedByteSize.
			byteSize := bitSize - 1 // 8 + 1.
			i := byteSize + 1.
			[	(i := i - 1) > 0 ifFalse: [ Incomplete zero raise ]. anInteger digitAt: i. 
			] reading read: byteSize into: bytes at: encodedByteSize - byteSize + 1 ]
		ifFalse: [ | base |
			base := ByteArray new: encodedByteSize + 1.
			base at: encodedByteSize + 1 put: 1.
			base changeClassTo: LargePositiveInteger.
			base := base + anInteger.
			bytes := ByteArray new: base digitLength.
			0 to: bytes size - 1 do: [ :i | bytes at: i + 1 put: (base digitAt: bytes size - i) ]
			].
	self string: bytes