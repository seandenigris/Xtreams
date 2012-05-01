initialize-release
initialize

	library := LibCryptoEVP new.
	context := library HMAC_CTX malloc.
	library HMAC_CTX_init: context