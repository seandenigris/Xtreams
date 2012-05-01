initialize-release
dh: elements
	<algorithm: #DH action: #elements2key>
	| blob |
	blob := ByteArray new writing.
	[ :p :g :y :x || cbKey |
		blob := ByteArray new writing.
		(blob encoding: #ascii) write: 'DHPV'.	"BCRYPT_DH_PRIVATE_MAGIC"
		cbKey := p digitLength. "ULONG cbKey"
		(blob interpreting: #unsignedLong) put: cbKey.
		[ :nr :size | nr class == SmallInteger
			ifTrue: [ size - 1 * -8 to: 0 by: 8 do: [ :shift | blob put: (( nr bitShift: shift) bitAnd: 255) ] ]
			ifFalse: [ (size - nr digitLength) timesRepeat: [ blob put: 0 ].
				nr digitLength to: 1 by: -1 do: [ :i | blob put: (nr basicAt: i) ] ]
		]	value: p value: cbKey;	"Modulus[cbKey]"
			value: g value: cbKey; "Generator[cbKey]"
			value: y value: cbKey;	"Public[cbKey]"
			value: x value: 20.	"PrivateExponent[20]"
		blob close
	] valueWithArguments: elements asArray.
	self algorithm: #DH size: elements first digitLength * 8 blob: blob terminal