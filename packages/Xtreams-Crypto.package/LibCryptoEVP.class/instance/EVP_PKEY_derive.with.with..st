procedures-pkeys
EVP_PKEY_derive: ctx with: key with: keylen
	<C: int EVP_PKEY_derive(EVP_PKEY_CTX *ctx, unsigned char *key, size_t *keylen)>
	^self externalAccessFailedWith: _errorCode