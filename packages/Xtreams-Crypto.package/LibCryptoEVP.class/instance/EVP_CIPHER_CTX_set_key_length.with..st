procedures-ciphers
EVP_CIPHER_CTX_set_key_length: x with: keylen
	<C: int EVP_CIPHER_CTX_set_key_length(EVP_CIPHER_CTX *x, int keylen)>
	^self externalAccessFailedWith: _errorCode