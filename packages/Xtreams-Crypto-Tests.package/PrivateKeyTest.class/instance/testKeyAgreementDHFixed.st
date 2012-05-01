tests-key-agreement
testKeyAgreementDHFixed

	| alice bob aPublic bSecret bPublic aSecret |
	alice := PrivateKey algorithm: 'DH' elements: self class example1024DHKeyElements1.
	bob := PrivateKey algorithm: 'DH' elements: self class example1024DHKeyElements2.
	[	aPublic := PublicKey algorithm: 'DH' elements: (alice elements first: 3).
		[	bSecret := bob derive: aPublic.
		] ensure: [ aPublic release ].
		bPublic := PublicKey algorithm: 'DH' elements: (bob elements first: 3).
		[	aSecret := alice derive: bPublic
		] ensure: [ bPublic release ]
	] ensure: [ alice release. bob release ].
	self assert: aSecret = bSecret