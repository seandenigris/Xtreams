private-implementation selection
supportsAlgorithm: algorithm

	self == PublicKey ifTrue: [^false].
	^self actionMap includesKey: algorithm