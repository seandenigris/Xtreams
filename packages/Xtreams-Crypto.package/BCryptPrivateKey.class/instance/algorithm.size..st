initialize-release
algorithm: algorithm size: keySize

	type := algorithm.
	bitSize := keySize.
	provider := library openAlgorithmProviderFor: algorithm.
	handle := library generateAsymmetricKeyProvider: provider size: bitSize