accessing
decrypt: bytes padding: paddingID
"Decrypt encrypted @bytes removing padding of paddingID type.
	bytes	<ByteArray>	encrypted bytes of approximately the same size as the key length (in bytes)
	paddingID	<String>	identifies the padding scheme to be applied (removed)
	^<ByteArray> the decrypted bytes
NOTE: It might be desirable to allocate the result in fixed space in order to facilitate secure handling of a secret.
"
	self subclassResponsibility