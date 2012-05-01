procedures-random
RAND_pseudo_bytes: buf with: num
	<C: int RAND_pseudo_bytes(unsigned char *buf, int num)>
	^self externalAccessFailedWith: _errorCode