procedures-pkeys-export/import
d2i_RSAPublicKey: a with: pp with: length
	<C: RSA * d2i_RSAPublicKey(RSA **a, const unsigned char **pp, long length)>
	^self externalAccessFailedWith: _errorCode