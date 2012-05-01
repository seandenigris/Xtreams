procedures-pkeys
EVP_PKEY_derive_init: ctx
	<C: int EVP_PKEY_derive_init(EVP_PKEY_CTX *ctx)>
	^self externalAccessFailedWith: _errorCode