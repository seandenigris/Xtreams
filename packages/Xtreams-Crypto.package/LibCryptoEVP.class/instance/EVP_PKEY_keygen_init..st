procedures-pkeys-generation
EVP_PKEY_keygen_init: ctx
	<C: int EVP_PKEY_keygen_init(EVP_PKEY_CTX *ctx)>
	^self externalAccessFailedWith: _errorCode