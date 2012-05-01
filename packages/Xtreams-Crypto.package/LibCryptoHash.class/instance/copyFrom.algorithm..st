private
copyFrom: mdContext algorithm: mdAlgorithm

	algorithm := mdAlgorithm.
	library EVP_DigestInit_ex: context with: algorithm with: 0.
	library EVP_MD_CTX_copy_ex: context with: mdContext