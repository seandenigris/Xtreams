tests
testRC4_Large

	| cipher key message ciphertext repeat buffer |
	cipher := Cipher new.
	key := ByteArray withAll: (0 to: 15).
	message := ByteArray withAll: (0 to: 255).
	repeat := 1000.
	ciphertext := (ByteArray new: repeat * message size) readWriteStream.
	"the output buffer must be in fixed space otherwise DLLCC will make a copy of it"
	buffer := ByteArray newInFixedSpace: message size.
	[	cipher algorithm: 'rc4' mode: nil key: key iv: nil encrypt: true.
		repeat timesRepeat: [
			self assert: (cipher update: message size from: message into: buffer) = message size.
			ciphertext nextPutAll: buffer ].
		self assert: (cipher finishInto: buffer) = 0.
		self assert: (buffer beginsWith: #[44 221 49 72 209 201 37 53 187 138 116 233 152 159 96]).
		cipher algorithm: 'rc4' mode: nil key: key iv: nil encrypt: false.
		ciphertext reset.
		repeat timesRepeat: [
			self assert: (cipher update: message size from: (ciphertext next: message size) into: buffer) = message size.
			self assert: buffer = message ].
		self assert: (cipher finishInto: buffer) = 0.
	] ensure: [ cipher release ]