Implements PrivateKey by calling Windows bcrypt (CNG) API. This API is available on Windows Vista and Windows 2008 Server and later versions. 

Instance Variables
	library	<BCrypt> 
	handle	<CPointer> pointer to the key 
	provider	<CPointer> pointer to the algorithm provider 
	bitSize	<SmallInteger> bit size of the key

