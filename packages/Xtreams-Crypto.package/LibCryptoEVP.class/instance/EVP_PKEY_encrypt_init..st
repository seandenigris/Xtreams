procedures-pkeys
EVP_PKEY_encrypt_init: ctx
	<C: int EVP_PKEY_encrypt_init(EVP_PKEY_CTX *ctx)>
	^self externalAccessFailedWith: _errorCode