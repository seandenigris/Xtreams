procedures
BN_bn2bin: a with: to
	<C: int BN_bn2bin(const BIGNUM *a, unsigned char *to)>
	^self externalAccessFailedWith: _errorCode