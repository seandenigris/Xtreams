initialize-release
initialize

	library := LibCryptoEVP new.
	context := library EVP_MD_CTX malloc.
	library EVP_MD_CTX_init: context