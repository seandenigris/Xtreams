tests-encryption
testEncryptionRSA

	| key message encrypted decrypted |
	message := ByteArray withAll: (1 to: 16).
	key := PublicKey algorithm: 'RSA' elements: self class example2048RSAKeyElementsPublic.
	[	encrypted := key encrypt: message padding: 'PKCS1'
	] ensure: [ key release ].
	key := PrivateKey algorithm: 'RSA' elements: self class example2048RSAKeyElements.
	[	decrypted := key decrypt: encrypted padding: 'PKCS1'
	] ensure: [ key release ].
	self assert:  decrypted = message