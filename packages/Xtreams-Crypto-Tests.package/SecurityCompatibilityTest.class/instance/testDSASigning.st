tests-signing
testDSASigning

	| key digest signature message |
	message := (ByteArray new writing encoding: #ascii) write: 'Message in a bottle!'; close; terminal.
	digest := (message reading hashing: 'SHA1') -= 0; close; digest.
	key := PrivateKey algorithm: #DSA elements: PrivateKeyTest example1024DSAKeyElements.
	[	signature := key sign: digest.
		signature := [ :r :s | security DSASignature r: r s: s
			] valueWithArguments: (key signatureElementsFrom: signature) asArray.
	] ensure: [ key release ].
	key := [ :y :p :q :g :count :seed | security DSAPublicKey p: p q: q g: g y: y
		] valueWithArguments: PrivateKeyTest example1024DSAKeyElementsPublic.
	self assert: (security DSA new publicKey: key; verify: signature of: message)