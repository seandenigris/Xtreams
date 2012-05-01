initialize-release
algorithm: id

	id == nil ifFalse: [
		provider := library openAlgorithmProviderFor: id asUppercase.
		objectLength := library getPropertyDWORD: 'ObjectLength' provider: provider.
		object := CIntegerType unsignedChar malloc: objectLength ].
	handle := library createHashProvider: provider object: object length: objectLength key: nil.