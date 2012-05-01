initialize-release
initialize

	library := BCrypt new.
	provider := library openAlgorithmProviderFor: 'RNG'