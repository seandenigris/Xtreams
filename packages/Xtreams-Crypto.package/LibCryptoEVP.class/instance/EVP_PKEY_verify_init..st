procedures-pkeys
EVP_PKEY_verify_init: ctx
	<C: int EVP_PKEY_verify_init(EVP_PKEY_CTX *ctx)>
	^self externalAccessFailedWith: _errorCode