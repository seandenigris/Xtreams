tests - crypto
testWriteEncryptReadDecrypt

	| content result key iv out in |
	content := ByteArray withAll: (1 to: 192).
	key := ByteArray withAll: (1 to: 16).
	iv := ByteArray withAll: (1 to: 16).
	out := self output encrypting: 'AES' mode: 'CBC' key: key iv: iv.
	[ out write: content ] ensure: [ out close ].
	in := self input decrypting: 'AES' mode: 'CBC' key: key iv: iv.
	[ result := in read: content size ] ensure: [ in close ].
	self assert: content = result.