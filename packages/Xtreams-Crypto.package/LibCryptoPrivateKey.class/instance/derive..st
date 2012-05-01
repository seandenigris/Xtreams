accessing
derive: peer

	| length secret buffer context |
	length := CIntegerType unsignedLong calloc.
	(context := library EVP_PKEY_CTX_new: handle with: nil) isValid ifFalse: [ self error ].
	[	(library EVP_PKEY_derive_init: context) > 0 ifFalse: [ self error ].
		(library EVP_PKEY_derive_set_peer: context with: peer handle) > 0 ifFalse: [ self error ].
		(library EVP_PKEY_derive: context with: nil with: length) > 0 ifFalse: [ self error ].
		buffer := CIntegerType unsignedChar malloc: length contents.
		[	(library EVP_PKEY_derive: context with: buffer with: length) > 0 ifFalse: [ self error ].
			secret := ByteArray newInFixedSpace: length contents.
			buffer copyAt: 0 to: secret size: secret size startingAt: 1
		] ensure: [ buffer free ]
	] ensure: [ length free. library EVP_PKEY_CTX_free: context ].
	^secret