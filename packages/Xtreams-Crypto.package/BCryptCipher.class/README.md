Implements Cipher by calling Windows BCrypt (CNG) API. This API is available on Windows Vista and Windows 2008 Server and later versions. Here's a list of available algorithms (from bcrypt.h): RC2, RC4, AES, DES, DESX, 3DES, 3DES_112. Available cipher modes are: CBC, CFB, CCM, GCM

Instance Variables
	library	<BCrypt> 
	provider	<CPointer> provider handle
	handle	<CPointer> key handle
	object	<CPointer> key object
	objectLength	<SmallInteger> have to cache the key object size for #reset
	ivObject	<CPointer> iv object
	encrypt	<Boolean> encrypting or decrypting?
	blockSize	<SmallInteger> caches block size
	key	<ByteArray> caches the key (for reset)
	iv	<ByteArray> caches the iv (for reset)

