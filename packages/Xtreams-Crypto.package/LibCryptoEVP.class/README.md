This is an interface to the EVP subset of OpenSSL's libCrypto library. The EVP layer provides generic API for using different kinds of encryption and hash algorithms in a uniform way. To use this interface you need OpenSSL installed on your system and the libCrypto shared library has to be accessible through its generic (non-versioned) name (e.g. libcrypto.so). Alternatively you can add additional library access methods (pragma library:) to this class (see the 'libraries' protocol on the class side).
You can quickly check if the library is accessible from the image with the following expression:

	self versionString

Class Instance Variables
	ciphersLoaded <Boolean> are libCrypto's algorithm name to definition mappings loaded
	digestsLoaded <Boolean> are libCrypto's algorithm name to definition mappings loaded
	errorsLoaded <Boolean> are libCrypto's error string mappings loaded
