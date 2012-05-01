procedures
BN_bin2bn: s with: len with: ret
	<C: BIGNUM *BN_bin2bn(const unsigned char *s, int len, BIGNUM *ret)>
	^self externalAccessFailedWith: _errorCode