initialize-release
algorithm: algorithm size: size blob: blob

	type := algorithm.
	bitSize := size.
	provider := library openAlgorithmProviderFor: algorithm.
	handle := library importAsymmetricKeyProvider: provider blob: blob type: type public: true