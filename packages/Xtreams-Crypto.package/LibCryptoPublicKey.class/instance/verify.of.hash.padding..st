accessing
verify: signature of: digestBytes hash: hashID padding: paddingID

	| result context |
	(context := library EVP_PKEY_CTX_new: handle with: nil) isValid ifFalse: [ self error ].
	[	(library EVP_PKEY_verify_init: context) > 0 ifFalse: [ self error ].
	  	"EVP_PKEY_CTX_set_rsa_padding"
		(library EVP_PKEY_CTX_ctrl: context with: library EVP_PKEY_RSA
				with: -1 with: 16r1001 "EVP_PKEY_CTRL_RSA_PADDING,"
				with: (library paddingFor: paddingID) with: nil
		) > 0 ifFalse: [ self error ].
		"EVP_PKEY_CTX_set_signature_md"
		(library EVP_PKEY_CTX_ctrl: context with: -1
				with: 2r1111100 "EVP_PKEY_OP_TYPE_SIG"
				with: 1 "EVP_PKEY_CTRL_MD"
				with: 0 with: (library getDigestByName: hashID)
		) > 0 ifFalse: [ self error ].
		result := library EVP_PKEY_verify: context with: signature with: signature size with: digestBytes with: digestBytes size.
	] ensure: [ library EVP_PKEY_CTX_free: context ].
	result < 0 ifTrue: [ self error: 'Signature verification failed!' ].
	^result = 1