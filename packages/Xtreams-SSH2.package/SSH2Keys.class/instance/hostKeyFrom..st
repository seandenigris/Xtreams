accessing
hostKeyFrom: pubKey

	pubKey type = #RSA ifTrue: [ ^SSH2RSAKey fromElements: pubKey elements ].
	pubKey type = #DSA ifTrue: [ ^SSH2DSSKey fromElements: pubKey elements ].
	self error: 'Unsupported key type'