tests-key-generation
testGenerateRSA

	| key elements pubKey |
	key := PrivateKey algorithm: 'RSA' size: 1024.
	[	self assert: key type = #RSA.
		self assert: key keyLength = 1024.
		elements := key elements.
		self assert: elements first "n" digitLength * 8 = 1024
	] ensure: [ key release ].
	key := PrivateKey algorithm: 'RSA' elements: elements.
	[	self assert: key elements = elements.
		pubKey := key asPublicKey.
		[	self assert: pubKey type = #RSA.
			self assert: pubKey keyLength = 1024.
			elements := pubKey elements.
			self assert: elements first digitLength * 8 = 1024
		] ensure: [ pubKey release ].
	] ensure: [ key release ]