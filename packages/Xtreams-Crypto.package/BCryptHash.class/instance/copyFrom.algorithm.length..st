initialize-release
copyFrom: originalHandle algorithm: id length: length

	provider := library openAlgorithmProviderFor: id asUppercase.
	objectLength := length.
	object := CIntegerType unsignedChar malloc: objectLength.
	handle := library duplicateHash: originalHandle object: object length: objectLength.