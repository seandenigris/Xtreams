Encrypts or decrypts bytes before writing into destination using the configured symmetric cipher (DES, AES, Blowfish, ....). The stream uses a suitable subclass of Cipher as the implementation of the algorithm. Currently there are implementations using Windows bcrypt.dll (Vista and later) or OpenSSL's libcrypto.so on all other platforms. The algorithm, direction (encrypt or decrypt), the key and initialization vector is configured when the stream is created. The destination stream must accept bytes (0..255).

The content has to be processed in block-sized quantities, where block size depends on the cipher. Consequently the stream must be closed to make sure the last block was written. Note that the encrypted bytes do not carry the information about the actual amount of bytes written and depending on the mode cipher mode (ECB, CBC, OFB, CFB,...) may or may not match the size of the un-encrypted input, therefore it might be necessary to communicate the original size of the data separately.

Creating cipher streams requires several parameters. First of all the encryption algorithm and mode has to be identified. Which algorithms and modes are available depends on the underlying implementation of Cipher. Commonly available algorithms are AES, DES, 3DES and RC4. Commonly available modes are CBC, CFB, OFB, CTR. The mode has significant impact on the security properties of the encrypted data, if in doubt use CBC.

The second required parameter is the key, which is a ByteArray of appropriate size. Usually a given cipher supports specific key size (e.g. DES - 8 bytes, 3DES - 24 bytes). Some algorithms support multiple sizes (e.g. AES-128 - 16 bytes, AES-256 - 32 bytes). Finally, depending on cipher mode an initialization vector (iv) may be needed. It is again a ByteArray where the size corresponds to the block size of the cipher (e.g. DES - 8 bytes, BF - 8 bytes, AES - 16 bytes). Stream ciphers (e.g. RC4) don't use modes or initialization vectors.

Instance Variables
	input	<ByteArray> fixed-space input buffer shared with libCrypto
	output	<ByteArray> fixed-space output buffer shared with libCrypto
	cipher	<CPointer> pointer to libCrypto's cipher definition structure
	blockSize	<SmallInteger> caches the block size of the cipher
	maxInputChunk	<SmallInteger> maximum amount of input processed with one cipher call
	unconsumed	<SmallInteger> how much of the input was not consumed yet

