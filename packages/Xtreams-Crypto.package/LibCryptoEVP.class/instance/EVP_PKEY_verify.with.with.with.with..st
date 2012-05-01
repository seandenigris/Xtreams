procedures-pkeys
EVP_PKEY_verify: ctx with: sig with: siglen with: tbs with: tbslen
	<C: int EVP_PKEY_verify(EVP_PKEY_CTX *ctx, const unsigned char *sig, size_t *siglen, const unsigned char *tbs, size_t tbslen)>
	^self externalAccessFailedWith: _errorCode