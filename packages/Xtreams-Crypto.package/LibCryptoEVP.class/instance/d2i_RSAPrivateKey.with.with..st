procedures-pkeys-export/import
d2i_RSAPrivateKey: a with: pp with: length
	<C: RSA * d2i_RSAPrivateKey(RSA **a, const unsigned char **pp, long length)>
	^self externalAccessFailedWith: _errorCode