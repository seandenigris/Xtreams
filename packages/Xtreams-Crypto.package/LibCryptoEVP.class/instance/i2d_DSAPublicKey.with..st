procedures-pkeys-export/import
i2d_DSAPublicKey: a with: pp
	<C: int i2d_DSAPublicKey(DSA *a, unsigned char **pp)>
	^self externalAccessFailedWith: _errorCode