initialize-release
dsa: elements
	<algorithm: #DSA action: #elements2key>
	| blob |
	blob := ByteArray new writing.
	[ :p :q :g :y :x :count :seed || next cbKey |
		blob := ByteArray new writing.
		(blob encoding: #ascii) write: 'DSPV'.	"BCRYPT_DSA_PRIVATE_MAGIC"
		cbKey := p digitLength. "ULONG cbKey"
		(blob interpreting: #unsignedLong) put: cbKey.
		next := [ :nr :size | nr class == SmallInteger
			ifTrue: [ size - 1 * -8 to: 0 by: 8 do: [ :shift | blob put: (( nr bitShift: shift) bitAnd: 255) ] ]
			ifFalse: [ (size - nr digitLength) timesRepeat: [ blob put: 0 ].
				nr digitLength to: 1 by: -1 do: [ :i | blob put: (nr basicAt: i) ] ] ].
		count
			ifNil: [ blob write: 4 from: [0] reading. "UCHAR Count[4]"
				blob write: 20 from: [0] reading ] "UCHAR Seed[20]"
			ifNotNil: [ next value: count value: 4; value: seed value: 20 ].
		next
			value: q value: 20;	"UCHAR q[20]"
			"--- end of BCRYPT_DSA_KEY_BLOB --- "
			value: p value: cbKey;	"Modulus[cbKey]"
			value: g value: cbKey; "Generator[cbKey]"
			value: y value: cbKey;	"Public[cbKey]"
			value: x value: 20.	"PrivateExponent[20]"
		blob close
	] valueWithArguments: ((Array new: 7) replaceFrom: 1 to: elements size with: elements startingAt: 1; yourself).
	self algorithm: #DSA size: elements first digitLength * 8 blob: blob terminal