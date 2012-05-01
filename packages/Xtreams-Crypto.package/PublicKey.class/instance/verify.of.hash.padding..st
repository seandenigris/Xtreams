accessing
verify: signature of: digestBytes hash: hashID padding: paddingID
"Verify @signature of @digestBytes. The digest was computed using algorithm identified by @hashID. Pad the digest bytes using padding scheme identified by @paddingID.
	signature <ByteArray>	signature bytes of approximately the same size as the key length (in bytes)
	digestBytes <ByteArray>	digest bytes of size that is smaller than the key length (in bytes)
	hashID	<String>	identifies the hash algorithm used to compute the digest
	paddingID	<String>	identifies the padding scheme that should be applied to the digest bytes
	^<Boolean>	was the @signature computed from @digestBytes using the corresponding private key?
"
	self subclassResponsibility