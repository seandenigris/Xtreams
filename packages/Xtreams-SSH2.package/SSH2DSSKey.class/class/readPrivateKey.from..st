instance creation
readPrivateKey: type from: stream

	| elements |
	type = 'DSA' ifFalse: [^nil].
	elements := (DERReadStream on: (stream ending: '-----END DSA PRIVATE KEY-----') encodingBase64) get.
	^PrivateKey algorithm: #DSA elements: (elements allButFirst: 1)