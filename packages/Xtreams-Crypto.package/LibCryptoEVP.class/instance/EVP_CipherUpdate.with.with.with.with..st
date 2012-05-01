procedures-ciphers
EVP_CipherUpdate: ctx with: out with: outl with: in with: inl
	<C: int EVP_CipherUpdate(EVP_CIPHER_CTX * ctx, unsigned char * out, int * outl, const unsigned char * in, int inl)>
	^self externalAccessFailedWith: _errorCode