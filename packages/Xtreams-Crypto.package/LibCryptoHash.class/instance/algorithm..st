initialize-release
algorithm: id

	id ifNotNil: [ algorithm := library getDigestByName: id ].
	library EVP_DigestInit_ex: context with: algorithm with: 0