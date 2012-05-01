tests-key-agreement
testDH

	| alice bob aPublic bSecret bPublic aSecret |
	alice := PrivateKey algorithm: #DH parameters: PrivateKeyTest example1024DHParameters.
	bob := [ :p :g | security DH p: p g: g ] valueWithArguments: PrivateKeyTest example1024DHParameters.
	[	bPublic := PublicKey algorithm: #DH elements: (PrivateKeyTest example1024DHParameters copyWith: bob publicValue).
		[	aSecret := alice derive: bPublic
		] ensure: [ bPublic release ].
		aPublic := alice elements at: 3.
		bSecret := (bob sharedSecretUsing: aPublic) asBigEndianByteArray.
	] ensure: [ alice release ].
	self assert: aSecret = bSecret