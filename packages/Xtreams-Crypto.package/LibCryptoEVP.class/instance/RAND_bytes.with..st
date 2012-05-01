procedures-random
RAND_bytes: buf with: num
	<C: int RAND_bytes(unsigned char *buf, int num)>
	^self externalAccessFailedWith: _errorCode