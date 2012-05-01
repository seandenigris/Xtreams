tests-signing
testRSASigning

	| key digest signature message |
	message := (ByteArray new writing encoding: #ascii) write: 'Message in a bottle!'; close; terminal.
	digest := (message reading hashing: 'MD5') -= 0; close; digest.
	key := PrivateKey algorithm: #RSA elements: PrivateKeyTest example2048RSAKeyElements.
	[	signature := key sign: digest hash: 'MD5' padding: 'PKCS1'
	] ensure: [ key release ].
	key := [ :n :e | security RSAPublicKey e: e n: n ] valueWithArguments: PrivateKeyTest example2048RSAKeyElementsPublic.
	self assert: (security RSA new useMD5 publicKey: key; verify: signature of: message)