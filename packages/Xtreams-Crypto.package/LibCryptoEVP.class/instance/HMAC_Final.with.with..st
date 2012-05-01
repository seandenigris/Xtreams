procedures-hmac
HMAC_Final: ctx with: md with: len
	<C: int HMAC_Final(HMAC_CTX *ctx, unsigned char *md, unsigned int *len)>
	^self externalAccessFailedWith: _errorCode