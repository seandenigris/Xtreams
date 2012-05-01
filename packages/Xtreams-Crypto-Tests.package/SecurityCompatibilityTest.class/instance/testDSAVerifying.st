tests-signing
testDSAVerifying

	| key digest signature message sigBytes |
	message := (ByteArray new writing encoding: #ascii) write: 'Message in a bottle!'; close; terminal.
	key := [ :p :q :g :y :x :count :seed | security DSAPrivateKey p: p q: q g: g x: x
		] valueWithArguments: PrivateKeyTest example1024DSAKeyElements.
	signature := security DSA new privateKey: key; sign: message.
	digest := (message reading hashing: 'SHA1') -= 0; close; digest.
	key := PublicKey algorithm: #DSA elements: PrivateKeyTest example1024DSAKeyElementsPublic.
	sigBytes := key signatureFromElements: (Array with: signature r with: signature s).
	[	self assert: (key verify: sigBytes of: digest)
	] ensure: [ key release ].