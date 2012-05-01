procedures-hmac
HMAC_CTX_copy: dctx with: sctx
	<C: int HMAC_CTX_copy(HMAC_CTX *dctx, HMAC_CTX *sctx)>
	^self externalAccessFailedWith: _errorCode