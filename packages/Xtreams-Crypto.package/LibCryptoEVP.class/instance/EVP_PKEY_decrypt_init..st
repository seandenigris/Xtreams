procedures-pkeys
EVP_PKEY_decrypt_init: ctx
	<C: int EVP_PKEY_decrypt_init(EVP_PKEY_CTX *ctx)>
	^self externalAccessFailedWith: _errorCode