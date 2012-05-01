initialize-release
initialize

	library := LibCryptoEVP new.
	context := library EVP_CIPHER_CTX malloc.
	library EVP_CIPHER_CTX_init: context.
	outLen := CIntegerType int malloc.
	outLen contents: 0.