Encrypts or decrypts bytes from the source using the configured symmetric cipher (DES, AES, Blowfish, ....). The stream uses a suitable subclass of Cipher as the implementation of the algorithm. Currently there are implementations using Windows bcrypt.dll (Vista and later) or OpenSSL's libcrypto.so on all other platforms. The algorithm, direction (encrypt or decrypt), the key and initialization vector is configured when the stream is created. The source stream must produce bytes (0..255).

In the case of block ciphers the content has to be processed in block-sized quantities, where block size is depends on the cipher. This doesn't impact the behavior of the API but some amount of read-ahead from source is at times necessary.

Creating cipher streams requires several parameters. First of all the encryption algorithm and mode has to be identified. Which algorithms and modes are available depends on the underlying implementation of Cipher. Commonly available algorithms are AES, DES, 3DES and RC4. Commonly available modes are CBC, CFB, OFB, CTR. The mode has significant impact on the security properties of the encrypted data, if in doubt use CBC.

The second required parameter is the key, which is a ByteArray of appropriate size. Usually a given cipher supports specific key size (e.g. DES - 8 bytes, 3DES - 24 bytes). Some algorithms support multiple sizes (e.g. AES-128 - 16 bytes, AES-256 - 32 bytes). Finally, depending on cipher mode an initialization vector (iv) may be needed. It is again a ByteArray where the size corresponds to the block size of the cipher (e.g. DES - 8 bytes, BF - 8 bytes, AES - 16 bytes). Stream ciphers (e.g. RC4) don't use modes or initialization vectors.

Instance Variables
	input	<ByteArray> fixed-space input buffer shared with libCrypto
	output	<ByteArray> fixed-space output buffer shared with libCrypto
	cipher	<CPointer> pointer to libCrypto's cipher definition structure
	blockSize	<SmallInteger> caches the block size of the cipher
	maxInputChunk	<SmallInteger> maximum amount of input processed with one cipher call
	unconsumed	<SmallInteger> how much of the output was not consumed yet

