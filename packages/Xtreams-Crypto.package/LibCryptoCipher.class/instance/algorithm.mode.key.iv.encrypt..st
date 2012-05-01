initialize-release
algorithm: id mode: modeId key: key iv: iv encrypt: encrypt

	id ifNotNil: [ algorithm := library getCipherByName: (self cipherNameFor: id mode: modeId key: key) ].
	(library EVP_CipherInit_ex: context with: algorithm with: 0 with: nil with: nil with: (encrypt ifTrue: [1] ifFalse: [0]))
		= 1 ifFalse: [ self externalCallFailed ].
	library EVP_CIPHER_CTX_set_key_length: context with: key size.
	library EVP_CIPHER_CTX_set_padding: context with: 0.
	(library EVP_CipherInit_ex: context with: nil with: 0 with: key with: iv with: -1)
		= 1 ifFalse: [ self externalCallFailed ].