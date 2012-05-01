tests-signing
testDSA

	| key digest signature elements bytes |
	digest := ByteArray withAll: (1 to: 20).
	key := PrivateKey algorithm: 'DSA' elements: self class example1024DSAKeyElements.
	[	signature := key sign: digest.
		elements := key signatureElementsFrom: signature.
		self assert: elements size = 2
	] ensure: [ key release ].
	key := PublicKey algorithm: 'DSA' elements: self class example1024DSAKeyElementsPublic.
	[	self assert: (key verify: signature of: digest).
		bytes := key signatureFromElements: elements.
		self assert: (signature = bytes)
	] ensure: [ key release ].