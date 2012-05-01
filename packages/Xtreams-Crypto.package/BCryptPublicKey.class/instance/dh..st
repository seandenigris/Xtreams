initialize-release
dh: elements
	<algorithm: #DH action: #elements2key>
	| blob |
	blob := ByteArray new writing.
	[ :p :g :y || cbKey |
		(blob encoding: #ascii) write: 'DHPB'.	"BCRYPT_DH_PUBLIC_MAGIC"
		cbKey := p digitLength.
		(blob interpreting: #unsignedLong) put: cbKey.
		[ :nr :size | nr class == SmallInteger
			ifTrue: [ size - 1 * -8 to: 0 by: 8 do: [ :shift | blob put: (( nr bitShift: shift) bitAnd: 255) ] ]
			ifFalse: [ (size - nr digitLength) timesRepeat: [ blob put: 0 ].
				nr digitLength to: 1 by: -1 do: [ :i | blob put: (nr basicAt: i) ] ]
		]	value: p value: cbKey;	"Modulus[cbKey]"
			value: g value: cbKey; "Generator[cbKey]"
			value: y value: cbKey.	"Public[cbKey]"
		blob close
	] valueWithArguments: elements asArray.
	self algorithm: #DH size: elements first digitLength * 8 blob: blob terminal