procedures-ciphers
EVP_CIPHER_CTX_cleanup: a
	"EVP_CIPHER_CTX_cleanup() clears all information from a cipher context and free up any allocated memory associate with it. It should be called after all operations using a cipher are complete so sensitive information does not remain in memory. Returns 1 for success, 0 for failure."

	<C: int EVP_CIPHER_CTX_cleanup(EVP_CIPHER_CTX * a)>
	^self externalAccessFailedWith: _errorCode