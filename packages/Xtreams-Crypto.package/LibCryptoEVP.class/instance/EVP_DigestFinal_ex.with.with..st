procedures-digests
EVP_DigestFinal_ex: ctx with: md with: s
	<C: int EVP_DigestFinal_ex(EVP_MD_CTX * ctx, unsigned char * md, unsigned int * s)>
	^self externalAccessFailedWith: _errorCode