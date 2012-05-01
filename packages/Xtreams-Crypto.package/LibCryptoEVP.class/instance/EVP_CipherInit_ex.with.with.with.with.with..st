procedures-ciphers
EVP_CipherInit_ex: ctx with: cipher with: impl with: key with: iv with: enc
	<C: int EVP_CipherInit_ex(EVP_CIPHER_CTX * ctx, const EVP_CIPHER * cipher, ENGINE * impl, const unsigned char * key, const unsigned char * iv, int enc)>
	^self externalAccessFailedWith: _errorCode