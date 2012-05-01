private
copyFrom: hmacContext algorithm: mdAlgorithm

	"Should be called on an uninitialized context!"
	algorithm := mdAlgorithm.
	library := LibCryptoEVP new.
	context := library HMAC_CTX malloc.
	library HMAC_CTX_copy: context with: hmacContext