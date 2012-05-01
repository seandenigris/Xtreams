procedures-hmac
HMAC_Update: ctx with: data with: len
	<C: int HMAC_Update(HMAC_CTX *ctx, const unsigned char *data, size_t len)>
	^self externalAccessFailedWith: _errorCode