procedures-hmac
HMAC_CTX_cleanup: ctx
	<C: void HMAC_CTX_cleanup(HMAC_CTX *ctx)>
	^self externalAccessFailedWith: _errorCode