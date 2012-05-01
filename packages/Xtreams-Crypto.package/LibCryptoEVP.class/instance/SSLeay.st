procedures
SSLeay
"From: http://openssl.org/docs/crypto/OPENSSL_VERSION_NUMBER.html
OPENSSL_VERSION_NUMBER is a numeric release version identifier:
	MMNNFFPPS: major minor fix patch status
The status nibble has one of the values 0 for development, 1 to e for betas 1 to 14, and f for release. for example
	 0x000906000 == 0.9.6 dev
	 0x000906023 == 0.9.6b beta 3
	 0x00090605f == 0.9.6e release
Versions prior to 0.9.3 have identifiers < 0x0930. Versions between 0.9.3 and 0.9.5 had a version identifier with this interpretation:
	MMNNFFRBB major minor fix final beta/patch
for example
	0x000904100 == 0.9.4 release
	0x000905000 == 0.9.5 dev
Version 0.9.5a had an interim interpretation that is like the current one, except the patch level got the highest bit set, to keep continuity. The number was therefore 0x0090581f.

SSLeay() returns this number. The return value can be compared to the macro to make sure that the correct version of the library has been loaded, especially when using DLLs on Windows systems.

	self xif SSLeay asByteArray asHexString
"

	<C: long SSLeay(void)>
	^self externalAccessFailedWith: _errorCode