accessing
derive: peer
"Derive a shared secret value from the public key of the peer. The peer can do the same using our public key.
	peer	<PublicKey>
	^<ByteArray> shared secret value of approximately the same size as the key length
NOTE: It might be desirable to allocate the result in fixed space in order to facilitate secure handling of a secret.
"
	self subclassResponsibility