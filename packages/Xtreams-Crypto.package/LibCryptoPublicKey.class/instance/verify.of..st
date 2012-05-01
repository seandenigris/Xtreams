accessing
verify: signature of: digestBytes

	| result context |
	(context := library EVP_PKEY_CTX_new: handle with: nil) isValid ifFalse: [ self error ].
	[	(library EVP_PKEY_verify_init: context) > 0 ifFalse: [ self error ].
		(result := library EVP_PKEY_verify: context with: signature with: signature size with: digestBytes with: digestBytes size) < 0 ifTrue: [ self error ].
	] ensure: [ library EVP_PKEY_CTX_free: context ].
	^result = 1