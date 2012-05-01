procedures-pkeys-generation
EVP_PKEY_paramgen: ctx with: ppkey
	<C: int EVP_PKEY_paramgen(EVP_PKEY_CTX *ctx, EVP_PKEY **ppkey)>
	^self externalAccessFailedWith: _errorCode