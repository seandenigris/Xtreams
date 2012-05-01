tests - crypto
testWriteDecryptReadEncrypt

	| content result key out in |
	content := ByteArray withAll: (1 to: 200).
	key := ByteArray withAll: (1 to: 16).
	out := self output decrypting: 'RC4' mode: nil key: key iv: nil.
	[ out write: content ] ensure: [ out close ].
	in := self input encrypting: 'RC4' mode: nil key: key iv: nil.
	[ result := in read: content size ] ensure: [ in close ].
	self assert: content = result.