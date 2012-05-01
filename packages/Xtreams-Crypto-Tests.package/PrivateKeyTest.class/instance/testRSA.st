tests-signing
testRSA

	| key digest signature elements bytes |
	digest := ByteArray withAll: (1 to: 16).
	key := PrivateKey algorithm: 'RSA' elements: self class example2048RSAKeyElements.
	[	signature := key sign: digest hash: 'MD5' padding: 'PKCS1'.
		elements := key signatureElementsFrom: signature.
		self assert: elements size = 1
	] ensure: [ key release ].
	key := PublicKey algorithm: 'RSA' elements: self class example2048RSAKeyElementsPublic.
	[	self assert: (key verify: signature of: digest hash: 'MD5' padding: 'PKCS1').
		bytes := key signatureFromElements: elements.
		self assert: signature = bytes
	] ensure: [ key release ]