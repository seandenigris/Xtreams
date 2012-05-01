accessing
sign: digestBytes hash: hashID padding: paddingID

	| siglen signature sig context |
	siglen := CIntegerType unsignedLong calloc.
	(context := library EVP_PKEY_CTX_new: handle with: nil) isValid ifFalse: [ self error ].
	[	(library EVP_PKEY_sign_init: context) > 0 ifFalse: [ self error ].
	  	"EVP_PKEY_CTX_set_rsa_padding"
		(library EVP_PKEY_CTX_ctrl: context with: library EVP_PKEY_RSA
				with: -1 with: 16r1001 "EVP_PKEY_CTRL_RSA_PADDING,"
				with: (library paddingFor: paddingID) with: nil) > 0 ifFalse: [ self error ].
		"EVP_PKEY_CTX_set_signature_md"
		(library EVP_PKEY_CTX_ctrl: context with: -1
				with: 2r11111000 "EVP_PKEY_OP_TYPE_SIG"
				with: 1 "EVP_PKEY_CTRL_MD"
				with: 0 with: (library getDigestByName: hashID)) > 0 ifFalse: [ self error ].
		(library EVP_PKEY_sign: context with: nil with: siglen with: digestBytes with: digestBytes size) > 0 ifFalse: [ self error ].
		sig := CIntegerType unsignedChar malloc: siglen contents.
		[	(library EVP_PKEY_sign: context with: sig with: siglen with: digestBytes with: digestBytes size) > 0 ifFalse: [ self error ].
			signature := ByteArray new: siglen contents.
			sig copyAt: 0 to: signature size: signature size startingAt: 1
		] ensure: [ sig free ]
	] ensure: [ siglen free. library EVP_PKEY_CTX_free: context ].
	^signature