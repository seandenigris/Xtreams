initialize-release
algorithm: id mode: modeId key: keyBytes iv: ivBytes encrypt: aBoolean

	id == nil ifFalse: [
		self release.
		provider := library openAlgorithmProviderFor: id asUppercase.
		objectLength := library getPropertyDWORD: 'ObjectLength' provider: provider.
		object := CIntegerType unsignedChar malloc: objectLength.
		encrypt := aBoolean.
		key := keyBytes.
		iv := ivBytes.
		modeId ifNotNil: [ library setPropertyString: 'ChainingMode' handle: provider value: ('ChainingMode', modeId asUppercase) ].
		iv ifNotNil: [ ivObject := CIntegerType unsignedChar malloc: iv size. ] ].
	handle := library generateSymmetricKeyProvider: provider object: object length: objectLength key: key.
	iv ifNotNil: [ ivObject copyAt: 0 from: iv size: iv size startingAt: 1 ]