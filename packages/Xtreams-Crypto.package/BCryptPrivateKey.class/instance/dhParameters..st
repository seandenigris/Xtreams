initialize-release
dhParameters: elements
	<algorithm: #DH action: #parameters2key>
	| blob |
	type := #DH.
	bitSize := elements first digitLength * 8.
	[ :p :g || cbKey cbLength |
		cbKey := p digitLength.
		cbLength := 12 "header = 3*ULONG" + (2 * cbKey).
		blob := ByteArray new writing.
		(blob interpreting: #unsignedLong) put: cbLength. "ULONG cbLength"
		(blob encoding: #ascii) write: 'DHPM'.	"BCRYPT_DH_PARAMETERS_MAGIC"
		(blob interpreting: #unsignedLong) put: cbKey. "ULONG cbKey"
		[ :nr :size | nr class == SmallInteger
			ifTrue: [ size - 1 * -8 to: 0 by: 8 do: [ :shift | blob put: (( nr bitShift: shift) bitAnd: 255) ] ]
			ifFalse: [ (size - nr digitLength) timesRepeat: [ blob put: 0 ].
				nr digitLength to: 1 by: -1 do: [ :i | blob put: (nr basicAt: i) ] ]
		]	value: p value: cbKey;	"Modulus[cbKey]"
			value: g value: cbKey. "Generator[cbKey]"
		blob close
	] valueWithArguments: elements asArray.
	provider := library openAlgorithmProviderFor: 'DH'.
	handle := library generateDHKeyProvider: provider size: bitSize parameters: blob terminal