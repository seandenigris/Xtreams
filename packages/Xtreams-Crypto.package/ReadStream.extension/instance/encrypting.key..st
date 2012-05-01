transforming
encrypting: cipher key: key
	"Encrypts bytes from the source using a stream cipher. The source stream must produce bytes (0..255)."
	"	cipher	<String>			name of the cipher to use, e.g. 'rc4'
		key		<ByteArray>		the encryption key; the size depends on the cipher
		^		<CipherReadStream>
	""
		| key encrypted |
		key := ByteArray withAll: (1 to: 50).
	 	encrypted :=
			((ByteArray new writing encrypting: 'RC4' key: key) encoding: #ascii)
				write: 'Message in a bottle!'; conclusion.
		((encrypted reading decrypting: 'RC4' key: key) encoding: #ascii) rest.
	"
	^self encrypting: cipher mode: nil key: key iv: nil