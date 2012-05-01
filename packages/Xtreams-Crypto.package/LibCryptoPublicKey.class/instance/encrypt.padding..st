accessing
encrypt: input padding: paddingID

	| outlen output out context |
	outlen := CIntegerType unsignedLong calloc.
	(context := library EVP_PKEY_CTX_new: handle with: nil) isValid ifFalse: [ self error ].
	[	(library EVP_PKEY_encrypt_init: context) > 0 ifFalse: [ self error ].
	  	"EVP_PKEY_CTX_set_rsa_padding"
		(library EVP_PKEY_CTX_ctrl: context with: library EVP_PKEY_RSA
				with: -1 with: 16r1001 "EVP_PKEY_CTRL_RSA_PADDING,"
				with: (library paddingFor: paddingID) with: nil) > 0 ifFalse: [ self error ].
		(library EVP_PKEY_encrypt: context with: nil with: outlen with: input with: input size) > 0 ifFalse: [ self error ].
		out := CIntegerType unsignedChar malloc: outlen contents.
		[	(library EVP_PKEY_encrypt: context with: out with: outlen with: input with: input size) > 0 ifFalse: [ self error ].
			output := ByteArray new: outlen contents.
			out copyAt: 0 to: output size: output size startingAt: 1
		] ensure: [ out free ]
	] ensure: [ outlen free. library EVP_PKEY_CTX_free: context ].
	^output