transforming
encrypting: cipher key: key
	"Encrypts bytes written into the stream using a stream cipher. The encrypted bytes are written into the destination stream which must be binary as well.
	""	cipher	<String>	name of the cipher to use, e.g. 'rc4'
		key	<ByteArray>	the encryption key; the size depends on the cipher
		^<CipherWriteStream>
	""
		| key encrypted |
		key := ByteArray withAll: (1 to: 50).
	 	encrypted :=
			((ByteArray new writing encrypting: 'RC4' key: key) encoding: #ascii)
				write: 'Message in a bottle!'; conclusion.
		((encrypted reading decrypting: 'RC4' key: key) encoding: #ascii) rest.
	"
	^self encrypting: cipher mode: nil key: key iv: nil