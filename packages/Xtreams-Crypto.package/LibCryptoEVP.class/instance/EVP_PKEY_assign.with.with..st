procedures-pkeys
EVP_PKEY_assign: pkey with: type with: key
	<C: int EVP_PKEY_assign(EVP_PKEY *pkey,int type,void *key)>
	^self externalAccessFailedWith: _errorCode