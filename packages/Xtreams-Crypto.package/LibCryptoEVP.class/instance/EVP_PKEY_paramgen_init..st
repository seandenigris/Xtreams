procedures-pkeys-generation
EVP_PKEY_paramgen_init: ctx
	<C: int EVP_PKEY_paramgen_init(EVP_PKEY_CTX *ctx)>
	^self externalAccessFailedWith: _errorCode