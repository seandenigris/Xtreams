tests-key-agreement
testDHFixed

	| alice bob aPublic bSecret bPublic aSecret |
	alice := PrivateKey algorithm: #DH elements: PrivateKeyTest example1024DHKeyElements1.
	bob := [ :p :g :y :x | (security DH p: p g: g) x: x y: y; yourself ] valueWithArguments: PrivateKeyTest example1024DHKeyElements2.
	[	aPublic := alice elements at: 3.
		bSecret := (bob sharedSecretUsing: aPublic) asBigEndianByteArray.
		bPublic := PublicKey algorithm: #DH elements: (PrivateKeyTest example1024DHKeyElements2 first: 3).
		[	aSecret := alice derive: bPublic
		] ensure: [ bPublic release ]
	] ensure: [ alice release ].
	self assert: aSecret = bSecret