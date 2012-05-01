tests
testRC4

	| cipher key message ciphertext |
	cipher := Cipher new.
	key := 'Open Sesame!'.
	message := ByteArray withAll: (0 to: 50).
	"the output buffer must be in fixed space otherwise DLLCC will make a copy of it"
	ciphertext := ByteArray newInFixedSpace: message size.
	[	cipher algorithm: 'rc4' mode: nil key: key iv: nil encrypt: true.
		cipher update: message size from: message into: ciphertext.
		cipher finishInto: ciphertext.
		self assert: ciphertext = #[209 242 137 212 10 179 40 24 102 124 129 35 68 123 88 172 125 119 198 61 70 120 64 23 116 204 58 50 166 171 60 2 213 61 130 129 228 13 233 141 122 33 217 33 241 71 44 231 43 58 135].
		cipher algorithm: 'rc4' mode: nil key: key iv: nil encrypt: false.
		cipher update: ciphertext size from: ciphertext copy into: ciphertext.
		cipher finishInto: ciphertext.
		self assert: ciphertext = message
	] ensure: [ cipher release ]