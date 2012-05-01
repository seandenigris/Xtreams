private
keyBlob

	| out size bytes selector |
	type ifNil: [^#()].
	selector := type = #DH ifTrue: [ #i2d_DHparams:with: ] ifFalse: [ ('i2d_', type, 'PrivateKey:with:') asSymbol ].
	out := CIntegerType unsignedChar pointerType calloc.
	[	size := library perform: selector with: ((handle memberAt: #pkey) memberAt: #ptr) with: out.
		size > 0 ifFalse: [ self error ].
		bytes := ByteArray new: size.
		out contents copyAt: 0 to: bytes size: size startingAt: 1.
	] ensure: [ out free ].
	^bytes