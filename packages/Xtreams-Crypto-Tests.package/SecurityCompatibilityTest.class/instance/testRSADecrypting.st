tests-encryption
testRSADecrypting

	| key message encrypted decrypted |
	message := (ByteArray new writing encoding: #ascii) write: 'Message in a bottle!'; close; terminal.
	key := [ :n :e | security RSAPublicKey e: e n: n ] valueWithArguments: PrivateKeyTest example2048RSAKeyElementsPublic.
	encrypted := security RSA new publicKey: key; encrypt: message.
	key := PrivateKey algorithm: #RSA elements: PrivateKeyTest example2048RSAKeyElements.
	[	decrypted := key decrypt: encrypted padding: 'PKCS1'
	] ensure: [ key release ].
	self assert: message = decrypted