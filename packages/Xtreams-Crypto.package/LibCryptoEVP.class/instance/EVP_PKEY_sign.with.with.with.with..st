procedures-pkeys
EVP_PKEY_sign: ctx with: sig with: siglen with: tbs with: tbslen
	<C: int EVP_PKEY_sign(EVP_PKEY_CTX *ctx, unsigned char *sig, unsigned long *siglen, const unsigned char *tbs, unsigned long tbslen)>
	^self externalAccessFailedWith: _errorCode