Instance Variables
	p	<LargePositiveInteger> safe prime
	g	<Integer> generator of subgroup of GF(p)
	exponent	<ByteArray> private exponent used to compute the public value in big endian form
	f	<LargePositiveInteger> server's public value
	e	<LargePositiveInteger> client's public value
	k	<ByteArray> shared secret encoded as mpint

