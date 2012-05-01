procedures-pkeys-export/import
i2d_DSAPrivateKey: a with: pp
	<C: int i2d_DSAPrivateKey(DSA *a, unsigned char **pp)>
	^self externalAccessFailedWith: _errorCode