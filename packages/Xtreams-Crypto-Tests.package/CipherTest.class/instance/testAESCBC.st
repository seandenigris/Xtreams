tests
testAESCBC

	| cipher key message ciphertext iv plaintext |
	cipher := Cipher new.
	key := ByteArray withAll: (0 to: 15).
	iv := ByteArray withAll: (0 to: 15).
	message := ByteArray withAll: (0 to: 31).
	"the output buffer must be in fixed space otherwise DLLCC will make a copy of it"
	ciphertext := ByteArray newInFixedSpace: message size.
	plaintext := ByteArray newInFixedSpace: message size.
	[	cipher algorithm: 'aes' mode: 'cbc' key: key iv: iv encrypt: true.
		cipher update: message size from: message into: ciphertext.
		cipher finishInto: ciphertext.
		self assert: ciphertext = #[198 161 59 55 135 143 91 130 111 79 129 98 161 200 216 121 53 217 220 219 130 159 236 51 82 231 191 16 184 75 228 165].
		cipher algorithm: 'aes' mode: 'cbc' key: key iv: iv encrypt: false.
		cipher update: ciphertext size from: ciphertext into: plaintext.
		cipher finishInto: plaintext.
		self assert: plaintext = message
	] ensure: [ cipher release ]