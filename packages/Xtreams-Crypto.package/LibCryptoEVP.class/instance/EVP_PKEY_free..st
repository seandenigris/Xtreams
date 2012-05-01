procedures-pkeys
EVP_PKEY_free: key
	<C: void EVP_PKEY_free(EVP_PKEY *key)>
	^self externalAccessFailedWith: _errorCode