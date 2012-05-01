This is an interface to the Cryptography API: Next Generation (CNG). It is only available on newer versions of Windows, i.e Vista and later or Windows 2008 Server and later. It provides generic API for using different kinds of encryption and hash algorithms in a uniform way. The corresponding header file is bcrypt.h and the shared library is bcrypt.dll

Instance Variables
	ouputLength <CPointer> a pointer to a scratch buffer (DWORD*) on the heap used throughout the API