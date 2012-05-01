procedures-pkeys-export/import
d2i_DSAPrivateKey: a with: pp with: length
	<C: DSA * d2i_DSAPrivateKey(DSA **a, const unsigned char **pp, long length)>
	^self externalAccessFailedWith: _errorCode