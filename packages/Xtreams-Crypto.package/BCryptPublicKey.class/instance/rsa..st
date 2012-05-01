initialize-release
rsa: elements
	<algorithm: #RSA action: #elements2key>
	| blob |
	blob := ByteArray new writing.
	[ :n :e |
		(blob encoding: #ascii) write: 'RSA1'.	"BCRYPT_RSAPUBLIC_MAGIC"
		(blob interpreting: #unsignedLong)
			put: n digitLength * 8; "Is this reliable enough?"
			put: e digitLength;
			put: n digitLength;
			put: 0; put: 0.
		[ :nr :size | nr class == SmallInteger
			ifTrue: [ size - 1 * -8 to: 0 by: 8 do: [ :shift | blob put: (( nr bitShift: shift) bitAnd: 255) ] ]
			ifFalse: [ (size - nr digitLength) timesRepeat: [ blob put: 0 ].
				nr digitLength to: 1 by: -1 do: [ :i | blob put: (nr basicAt: i) ] ]
		]	value: e value: e digitLength;
			value: n value: n digitLength.
		blob close
	] valueWithArguments: elements asArray.
	self algorithm: #RSA size: elements first digitLength * 8 blob: blob terminal