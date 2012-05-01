procedures-pkeys-export/import
i2d_RSAPrivateKey: a with: pp
	<C: int i2d_RSAPrivateKey(RSA *a, unsigned char **pp)>
	^self externalAccessFailedWith: _errorCode