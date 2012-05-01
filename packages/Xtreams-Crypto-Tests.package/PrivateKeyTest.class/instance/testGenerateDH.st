tests-key-generation
testGenerateDH

	| key elements pubKey |
	key := PrivateKey algorithm: 'DH' size: 512.
	[	self assert: key type = #DH.
		self assert: key keyLength = 512.
		elements := key elements.
		self assert: elements first "p" digitLength * 8 = 512
	] ensure: [ key release ].
	key := PrivateKey algorithm: 'DH' elements: elements.
	[	self assert: key elements = elements.
		pubKey := key asPublicKey.
		[	self assert: pubKey type = #DH.
			self assert: pubKey keyLength = 512.
			elements := pubKey elements.
			self assert: elements first digitLength * 8 = 512
		] ensure: [ pubKey release ].
	] ensure: [ key release ]