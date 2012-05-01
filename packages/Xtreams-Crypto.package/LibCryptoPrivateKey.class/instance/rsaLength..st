initialize-release
rsaLength: bitSize
	<algorithm: #RSA action: #size2key>
	| output context |
	type := #RSA.
	output := CPointerType defaultPointer calloc.
	context := library EVP_PKEY_CTX_new_id: library EVP_PKEY_RSA with: nil.
	[	(library EVP_PKEY_keygen_init: context) > 0 ifFalse: [ self error ].
		(library EVP_PKEY_CTX_ctrl: context with: library EVP_PKEY_RSA
			with: 4 "EVP_PKEY_OP_KEYGEN"
			with: 16r1003 "#define EVP_PKEY_CTRL_RSA_KEYGEN_BITS   (EVP_PKEY_ALG_CTRL + 3)"
			with: bitSize with: nil) > 0 ifFalse: [ self error ].
		(library EVP_PKEY_keygen: context with: output) > 0 ifFalse: [ self error ].
		handle := library EVP_PKEY newPointerToAddress: output contents referentAddress
	] ensure: [ output free. library EVP_PKEY_CTX_free: context ]