private-key exchange
activateKeysOnIncoming

	kex activateClientKeysOn: in.
	self startReader