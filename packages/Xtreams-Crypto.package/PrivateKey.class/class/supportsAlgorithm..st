private-implementation selection
supportsAlgorithm: algorithm

	self == PrivateKey ifTrue: [^false].
	^self actionMap includesKey: algorithm