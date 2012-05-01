tests
testWriteDecryptReadEncryptRC4

	| content result key out in buffer |
	content := ByteArray withAll: (1 to: 200).
	key := ByteArray withAll: (1 to: 16).
	buffer := ElasticBuffer on: ByteArray new.
	out := buffer writing decrypting: 'RC4' mode: nil key: key iv: nil.
	in := buffer reading encrypting: 'RC4' mode: nil key: key iv: nil.
	[	1 to: 5 do: [ :i |
			out write: content; flush.
			result := in read: content size.
			self assert: content = result ].
	] ensure: [ out close. in close ].