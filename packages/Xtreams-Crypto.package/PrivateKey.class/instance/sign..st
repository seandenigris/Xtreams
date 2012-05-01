accessing
sign: digestBytes
"Compute digital signature for @digestBytes. Generally the longer version of this method should be used unless the type of the receiver (the key) only supports single digest algorithm and single padding scheme.
	bytes	<ByteArray>	encrypted bytes of size that is smaller than the key length (in bytes)
	^<ByteArray>	signature bytes of approximately the same size as the key length (in bytes)
"
	^self sign: digestBytes hash: nil padding: nil