tests
writeEncryptReadDecryptBlockCipher: cipher mode: mode key: keySize block: blockSize
 
	| content result key iv out in buffer repeats padding |
	repeats := 5.
	content := ByteArray withAll: (1 to: blockSize * 25 / 2).
	padding := ByteArray new: blockSize - (content size * repeats \\ blockSize) withAll: 0.
	key := ByteArray withAll: (1 to: keySize).
	iv := ByteArray withAll: (1 to: blockSize).
	buffer := ElasticBuffer on: ByteArray new.
	out := buffer writing encrypting: cipher mode: mode key: key iv: iv.
	in := buffer reading decrypting: cipher mode: mode key: key iv: iv.
	[	1 to: repeats do: [ :i | out write: content; flush ].
		out write: padding; close.
		1 to: repeats do: [ :i |
			result := in read: content size.
			self assert: content = result ].
		result := in rest.
		self assert: padding = result
	] ensure: [ out close. in close ].