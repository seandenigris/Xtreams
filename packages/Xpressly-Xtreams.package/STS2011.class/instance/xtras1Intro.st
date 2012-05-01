14 xtras
xtras1Intro
	<slide: 1 title: 'Xtras'>
"
	Various non-core transformations

	= Compression =
		calls ZLib

	= Cryptography =
		calls *BCrypt* (CNG) on Windows
		calls OpenSSL's *libcrypto* everywhere else
		hashing (MD5, SHA1, SHA256, SHA512, ...)
		hashing with key (HMAC with MD5, SHA1, ...)
		encryption (RC4, AES, DES, ...)

	= HTTP Chunking =
"