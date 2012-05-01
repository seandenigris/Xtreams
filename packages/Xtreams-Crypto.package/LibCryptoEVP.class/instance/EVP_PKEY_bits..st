procedures-pkeys
EVP_PKEY_bits: pkey
	<C: int EVP_PKEY_bits(EVP_PKEY *pkey)>
	^self externalAccessFailedWith: _errorCode