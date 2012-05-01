procedures-digests
EVP_MD_CTX_copy_ex: out with: in
	<C: int EVP_MD_CTX_copy_ex(EVP_MD_CTX *out, const EVP_MD_CTX *in)>
	^self externalAccessFailedWith: _errorCode