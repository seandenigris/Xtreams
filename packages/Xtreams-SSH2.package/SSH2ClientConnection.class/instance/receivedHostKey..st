private-key exchange
receivedHostKey: key

	(keyValidator isNil or: [ keyValidator value: key ]) ifFalse: [
		self error: 'Host key validation failed!' ].
	host_key := key