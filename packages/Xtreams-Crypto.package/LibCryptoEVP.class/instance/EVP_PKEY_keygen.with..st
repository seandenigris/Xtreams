procedures-pkeys-generation
EVP_PKEY_keygen: ctx with: ppkey
	<C: int EVP_PKEY_keygen(EVP_PKEY_CTX *ctx, EVP_PKEY **ppkey)>
	^self externalAccessFailedWith: _errorCode