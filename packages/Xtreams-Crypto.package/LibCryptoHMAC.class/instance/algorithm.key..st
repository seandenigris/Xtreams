initialize-release
algorithm: id key: key

	id ifNotNil: [ algorithm := library getDigestByName: id ].
	library HMAC_Init_ex: context with: key with: (key size min: library HMAC_MAX_MD_CBLOCK) with: algorithm with: 0.