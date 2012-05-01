Implements Cipher by calling OpenSSL libcrypto EVP APIs. The list of available algorithms can be obtained with the 'openssl enc help' command. The full set of algorithms depends on the installed version of OpenSSL. Following table lists some of the commonly used algorithms supported by OpenSSL 1.0.0-fips-beta4. The ecb, cbc, ofb, cfb suffixes refer to the mode of use for a block cipher.

	||	id			|| algorithm	|| key size	||	iv size	||	notes
	|| aes-128-?		||	AES	||	16B		||	16B		||	? is one of {ecb, cbc, ofb, cfb, cfb1, cfb8}
	|| aes-192-?		||	AES	||	24B		||	16B		||	? is one of {ecb, cbc, ofb, cfb, cfb1, cfb8}
	|| aes-256-?		||	AES	||	32B		||	16B		||	? is one of {ecb, cbc, ofb, cfb, cfb1, cfb8}
	|| bf-?			|| Blowfish	||	8-256B	||	8B		||	? is one of {ecb, cbc, ofb, ofb}
	|| des-?			|| 	DES	||	8B		||	8B		||	? is one of {ecb, cbc, ofb, cfb, cfb1, cfb8}
	|| des-ede3-?	|| DES (x3)	||	24B		||	8B		||	? is one of {ecb, cbc, ofb, cfb}
	|| rc4			||	RC4	||	8-256B	||	n/a		||	stream cipher (no iv, no modes)

Instance Variables
	library	<LibCryptoEVP> external interface to libCrypto
	context	<CPointer> pointer to libCrypto's context structure
	algorithm	<CPointer> pointer to libCrypto's cipher definition structure (constant)
	outLen	<ByteArray> fixed-space scratch buffer to receive output length from libCrypto
