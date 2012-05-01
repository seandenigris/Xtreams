private
rsaElements
	<algorithm: #RSA action: #key2elements>
	| blob cbPublicExp cbModulus cbPrime1 cbPrime2 next e n |
	blob := self keyBlob reading.
	((blob encoding: #ascii) read: 4) = 'RSA1' "BCRYPT_RSAPUBLIC_MAGIC" ifFalse: [ self error: 'Will not happen' ].
	blob := blob interpreting: #unsignedLong.
	"Our bitSize is multiple of 8, but what we get from BCrypt can be few bits less (in case the top bits are zero)"
	bitSize - blob get < 8 ifFalse: [ self error: 'Key size mismatch' ].
	cbPublicExp := blob get.
	cbModulus := blob get.
	cbPrime1 := blob get.
	cbPrime2 := blob get.
	blob := blob source.
	next := [ :size | size < 9
		ifTrue: [ (blob limiting: size) inject: 0 into: [ :total :byte | total * 256 + byte ] ]
		ifFalse: [ | nr | nr := LargePositiveInteger basicNew: size.
			size to: 1 by: -1 do: [ :i | nr basicAt: i put: blob get ].
			nr compressed ] ].
	e := next value: cbPublicExp.
	n := next value: cbModulus.
	^Array with: n with: e