tests
testAESCBC_Large

	| cipher key message ciphertext iv repeat buffer |
	cipher := Cipher new.
	key := ByteArray withAll: (0 to: 15).
	iv := ByteArray withAll: (0 to: 15).
	message := ByteArray withAll: (0 to: 255).
	repeat := 1000.
	ciphertext := (ByteArray new: repeat * message size) readWriteStream.
	"the output buffer must be in fixed space otherwise DLLCC will make a copy of it"
	buffer := ByteArray newInFixedSpace: message size.
	[	cipher algorithm: 'aes' mode: 'cbc' key: key iv: iv encrypt: true.
		repeat timesRepeat: [
			self assert: (cipher update: message size from: message into: buffer) = message size.
			ciphertext nextPutAll: buffer ].
		self assert: (cipher finishInto: buffer) = 0.
		self assert: (buffer beginsWith: #[158 150 148 77 35 167 191 128 139 4 154 14 142 182 179 18 202]).
		cipher algorithm: 'aes' mode: 'cbc' key: key iv: iv encrypt: false.
		ciphertext reset.
		repeat timesRepeat: [
			self assert: (cipher update: message size from: (ciphertext next: message size) into: buffer) = message size.
			self assert: buffer = message ].
		self assert: (cipher finishInto: buffer) = 0.
	] ensure: [ cipher release ]