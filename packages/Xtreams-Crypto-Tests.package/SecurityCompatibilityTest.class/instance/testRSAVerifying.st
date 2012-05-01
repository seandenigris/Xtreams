tests-signing
testRSAVerifying

	| key digest signature message |
	message := (ByteArray new writing encoding: #ascii) write: 'Message in a bottle!'; close; terminal.
	key := [ :n :e :d :p :q :dp :dq :qInv |
			(security RSAPrivateKey d: d n: n) p: p; q: q; dp: dp; dq: dq; qInv: qInv; yourself
		] cullWithArguments: PrivateKeyTest example2048RSAKeyElements.
	signature := security RSA new useMD5 privateKey: key; sign: message.
	digest := (message reading hashing: 'MD5') -= 0; close; digest.
	key := PublicKey algorithm: #RSA elements: PrivateKeyTest example2048RSAKeyElementsPublic.
	[	self assert: (key verify: signature of: digest hash: 'MD5' padding: 'PKCS1')
	] ensure: [ key release ].