procedures-ciphers
EVP_CIPHER_CTX_set_padding: c with: pad
	<C: int EVP_CIPHER_CTX_set_padding(EVP_CIPHER_CTX *c, int pad)>
	^self externalAccessFailedWith: _errorCode