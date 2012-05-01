private
rsaElements
	<algorithm: #RSA action: #key2elements>
	| out size bytes |
	type ifNil: [^#()].
	out := CIntegerType unsignedChar pointerType calloc.
	[	size := library i2d_RSAPublicKey: ((handle memberAt: #pkey) memberAt: #ptr) with: out.
		size > 0 ifFalse: [ self error ].
		bytes := ByteArray new: size.
		out contents copyAt: 0 to: bytes size: size startingAt: 1.
	] ensure: [ out free ].
	^(DERReadStream on: bytes reading) get