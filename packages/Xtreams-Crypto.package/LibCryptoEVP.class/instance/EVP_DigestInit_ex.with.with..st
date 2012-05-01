procedures-digests
EVP_DigestInit_ex: ctx with: type with: impl
	<C: int EVP_DigestInit_ex(EVP_MD_CTX * ctx, const EVP_MD * type, ENGINE * impl)>
	^self externalAccessFailedWith: _errorCode