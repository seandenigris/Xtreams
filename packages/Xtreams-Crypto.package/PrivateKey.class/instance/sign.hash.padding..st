accessing
sign: digestBytes hash: hashID padding: paddingID
"Compute digital signature for @digestBytes that were computed using algorithm identified by @hashID. Pad the digest bytes using padding scheme identified by @paddingID.
	bytes	<ByteArray>	encrypted bytes of size that is smaller than the key length (in bytes)
	hashID	<String>	identifies the hash algorithm used to compute the digest
	paddingID	<String>	identifies the padding scheme that should be applied to the digest bytes
	^<ByteArray>	signature bytes of approximately the same size as the key length (in bytes)
"
	self subclassResponsibility