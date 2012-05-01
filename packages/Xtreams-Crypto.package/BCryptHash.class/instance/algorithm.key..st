initialize-release
algorithm: id key: keyBytes

	id == nil ifFalse: [
		key := keyBytes.
		provider := library openHMACAlgorithmProviderFor: id asUppercase.
		objectLength := library getPropertyDWORD: 'ObjectLength' provider: provider.
		object := CIntegerType unsignedChar malloc: objectLength ].
	handle := library createHashProvider: provider object: object length: objectLength key: key.