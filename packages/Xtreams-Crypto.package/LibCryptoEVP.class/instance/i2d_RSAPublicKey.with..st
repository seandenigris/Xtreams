procedures-pkeys-export/import
i2d_RSAPublicKey: a with: pp
	<C: int i2d_RSAPublicKey(RSA *a, unsigned char **pp)>
	^self externalAccessFailedWith: _errorCode