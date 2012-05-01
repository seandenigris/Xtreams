procedures-pkeys-export/import
d2i_DHparams: a with: pp with: length
	<C: DH* d2i_DHparams(DH **a, const unsigned char **pp, long length)>
	^self externalAccessFailedWith: _errorCode