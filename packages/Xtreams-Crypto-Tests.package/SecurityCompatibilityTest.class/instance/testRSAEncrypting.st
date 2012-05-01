tests-encryption
testRSAEncrypting

	| key message encrypted decrypted |
	message := (ByteArray new writing encoding: #ascii) write: 'Message in a bottle!'; close; terminal.
	key := PublicKey algorithm: #RSA elements: PrivateKeyTest example2048RSAKeyElementsPublic.
	[	encrypted := key encrypt: message padding: 'PKCS1'
	] ensure: [ key release ].
	key := [ :n :e :d :p :q :dp :dq :qInv |
			(security RSAPrivateKey d: d n: n) p: p; q: q; dp: dp; dq: dq; qInv: qInv; yourself
		] cullWithArguments: PrivateKeyTest example2048RSAKeyElements.
	decrypted := security RSA new privateKey: key; decrypt: encrypted.
	self assert: decrypted = message