procedures-hmac
HMAC_Init_ex: ctx with: key with: len with: md with: impl
	<C: int HMAC_Init_ex(HMAC_CTX *ctx, const void *key, int len, const EVP_MD *md, ENGINE *impl)>
	^self externalAccessFailedWith: _errorCode