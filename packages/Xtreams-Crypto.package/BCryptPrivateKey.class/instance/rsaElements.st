private
rsaElements
	<algorithm: #RSA action: #key2elements>
	| blob cbPublicExp cbModulus cbPrime1 cbPrime2 next e n p q dp dq qInv d |
	blob := self keyBlob reading.
	((blob encoding: #ascii) read: 4) = 'RSA3' "BCRYPT_RSAFULLPRIVATE_MAGIC" ifFalse: [ self error: 'Will not happen' ].
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
	p := next value: cbPrime1.
	q := next value: cbPrime2.
	dp := next value: cbPrime1.
	dq := next value: cbPrime2.
	qInv := next value: cbPrime1.
	d := next value: cbModulus.
	^Array new writing put: n; put: e; put: d; put: p; put: q; put: dp; put: dq; put: qInv; close; terminal