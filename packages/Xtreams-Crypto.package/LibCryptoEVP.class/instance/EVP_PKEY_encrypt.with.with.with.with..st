procedures-pkeys
EVP_PKEY_encrypt: ctx with: out with: outlen with: in with: inlen
	<C: int EVP_PKEY_encrypt(EVP_PKEY_CTX *ctx, unsigned char *out, size_t *outlen, const unsigned char *in, size_t inlen)>
	^self externalAccessFailedWith: _errorCode