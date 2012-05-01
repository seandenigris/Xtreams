procedures-digests
EVP_MD_CTX_cleanup: ctx
	<C: int EVP_MD_CTX_cleanup(EVP_MD_CTX * ctx)>
	^self externalAccessFailedWith: _errorCode