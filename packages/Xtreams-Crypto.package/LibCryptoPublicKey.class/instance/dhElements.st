private
dhElements
	<algorithm: #DH action: #key2elements>
	| dh pub	out size bytes |
	type ifNil: [^#()].
	out := CIntegerType unsignedChar pointerType calloc.
	[	size := library i2d_DHparams: ((handle memberAt: #pkey) memberAt: #ptr) with: out.
		size > 0 ifFalse: [ self error ].
		bytes := ByteArray new: size.
		out contents copyAt: 0 to: bytes size: size startingAt: 1.
	] ensure: [ out free ].
	dh := (handle memberAt: #pkey) memberAt: #dh.
	pub := library bn2lpi: (dh memberAt: #pub_key).
	^(DERReadStream on: bytes reading) get copyWith: pub