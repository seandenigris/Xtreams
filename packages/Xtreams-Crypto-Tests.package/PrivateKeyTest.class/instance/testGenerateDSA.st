tests-key-generation
testGenerateDSA

	| key elements pubKey |
	key := PrivateKey algorithm: 'DSA' size: 1024.
	[	self assert: key type = #DSA.
		self assert: key keyLength = 1024.
		elements := key elements.
		self assert: elements first "p" digitLength * 8 = 1024
	] ensure: [ key release ].
	key := PrivateKey algorithm: 'DSA' elements: elements.
	[	self assert: key elements = elements.
		pubKey := key asPublicKey.
		[	self assert: pubKey type = #DSA.
			self assert: pubKey keyLength = 1024.
			elements := pubKey elements.
			self assert: elements first digitLength * 8 = 1024
		] ensure: [ pubKey release ].
	] ensure: [ key release ]