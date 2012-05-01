accessing
sign: digestBytes

	| siglen signature sig context |
	siglen := CIntegerType unsignedLong calloc.
	(context := library EVP_PKEY_CTX_new: handle with: nil) isValid ifFalse: [ self error ].
	[	(library EVP_PKEY_sign_init: context) > 0 ifFalse: [ self error ].
		(library EVP_PKEY_sign: context with: nil with: siglen with: digestBytes with: digestBytes size) > 0 ifFalse: [ self error ].
		sig := CIntegerType unsignedChar malloc: siglen contents.
		[	(library EVP_PKEY_sign: context with: sig with: siglen with: digestBytes with: digestBytes size) > 0 ifFalse: [ self error ].
			signature := ByteArray new: siglen contents.
			sig copyAt: 0 to: signature size: signature size startingAt: 1
		] ensure: [ sig free ]
	] ensure: [ siglen free. library EVP_PKEY_CTX_free: context ].
	^signature