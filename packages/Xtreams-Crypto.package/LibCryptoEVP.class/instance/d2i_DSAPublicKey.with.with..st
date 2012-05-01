procedures-pkeys-export/import
d2i_DSAPublicKey: a with: pp with: length
	<C: DSA * d2i_DSAPublicKey(DSA **a, const unsigned char **pp, long length)>
	^self externalAccessFailedWith: _errorCode