procedures-pkeys-export/import
i2d_DHparams: a with: pp
	<C: int i2d_DHparams(DH *a, unsigned char **pp)>
	^self externalAccessFailedWith: _errorCode