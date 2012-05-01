accessing
encrypt: bytes padding: paddingID
"Encrypt @bytes applying padding of paddingID type.
	bytes	<ByteArray>	bytes to encrypt of size that is smaller than the key length (in bytes)
	paddingID	<String>	identifies the padding scheme to be applied (before encryption)
	^<ByteArray> the encrypted bytes of approximately the same size as the key length (in bytes)
"
	self subclassResponsibility