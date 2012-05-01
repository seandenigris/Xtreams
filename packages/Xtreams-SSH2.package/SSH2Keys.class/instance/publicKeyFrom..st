accessing
publicKeyFrom: ssh2Key

	ssh2Key class = SSH2RSAKey ifTrue: [ ^PublicKey algorithm: #RSA elements: ssh2Key elements ].
	ssh2Key class = SSH2DSSKey ifTrue: [ ^PublicKey algorithm: #DSA elements: ssh2Key elements ].
	self error: 'Unsupported key type'