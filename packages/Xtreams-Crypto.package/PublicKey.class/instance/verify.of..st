accessing
verify: signature of: digestBytes
"Verify @signature of @digestBytes. Generally the longer version of this method should be used unless the type of the receiver (the key) only supports single digest algorithm and single padding scheme.
	signature <ByteArray>	signature bytes of approximately the same size as the key length (in bytes)
	digestBytes <ByteArray>	digest bytes of size that is smaller than the key length (in bytes)
	^<Boolean>	was the @signature computed from @digestBytes using the corresponding private key?
"

	^self verify: signature of: digestBytes hash: nil padding: nil