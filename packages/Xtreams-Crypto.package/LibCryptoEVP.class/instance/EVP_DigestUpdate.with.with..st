procedures-digests
EVP_DigestUpdate: ctx with: d with: cnt
	<C: int EVP_DigestUpdate(EVP_MD_CTX * ctx, const void * d, size_t cnt)>
	^self externalAccessFailedWith: _errorCode