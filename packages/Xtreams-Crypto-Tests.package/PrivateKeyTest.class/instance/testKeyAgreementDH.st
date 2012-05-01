tests-key-agreement
testKeyAgreementDH

	| alice bob aPublic bSecret bPublic aSecret |
	alice := PrivateKey algorithm: 'DH' parameters: self class example1024DHParameters.
	bob := PrivateKey algorithm: 'DH' parameters: self class example1024DHParameters.
	[	aPublic := PublicKey algorithm: 'DH' elements: (alice elements first: 3).
		[	bSecret := bob derive: aPublic.
		] ensure: [ aPublic release ].
		bPublic := PublicKey algorithm: 'DH' elements: (bob elements first: 3).
		[	aSecret := alice derive: bPublic
		] ensure: [ bPublic release ]
	] ensure: [ alice release. bob release ].
	self assert: aSecret = bSecret