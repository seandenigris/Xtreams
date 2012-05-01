transforming
decrypting: cipher mode: mode key: key iv: iv
	"Decrypts bytes from the source using a symmetric cipher (DES, AES, Blowfish, ....). The source stream must produce bytes (0..255). The parameter values depend on the chosen cipher, see CipherReadStream class comment for more details.
	""	cipher	<String>			name of the cipher to use, e.g. 'aes', 'des', 'rc4' , 'blowfish', ...
		mode	<String>			name of block cipher mode (nil if @cipher is not a block cipher), e.g. 'cbc', 'cfb', 'ofb', 'ctr' , ...
		key		<ByteArray>		the encryption key, the size depends on the cipher
		iv		<ByteArray> 	the initialization vector. the size corresponds to the block size of the cipher
		^		<CipherReadStream>
	""
		| key iv message padding encrypted |
		key := ByteArray withAll: (1 to: 32).
		iv := ByteArray withAll: (1 to: 16).
		message := 'Message in a bottle!'.
		padding := ByteArray new: (iv size - (message size \\ iv size)).
	 	encrypted :=
			((ByteArray new writing encrypting: 'AES' mode: 'CBC' key: key iv: iv) encoding: #ascii)
				write: message; write: padding; close; terminal.
		((encrypted reading decrypting: 'AES' mode: 'CBC' key: key iv: iv) encoding: #ascii) read: message size.
	"
	^(CipherReadStream on: self)
		algorithm: cipher mode: mode key: key iv: iv encrypt: false;
		yourself