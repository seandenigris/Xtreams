instance creation
readPrivateKey: type from: stream

	| elements |
	type = 'RSA' ifFalse: [^nil].
	elements := (DERReadStream on: (stream ending: '-----END RSA PRIVATE KEY-----') encodingBase64) get.
	^PrivateKey algorithm: #RSA elements: (elements allButFirst: 1)