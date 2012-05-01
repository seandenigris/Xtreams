procedures
BN_num_bits: a
	<C: int BN_num_bits(const BIGNUM *a)>
	^self externalAccessFailedWith: _errorCode