accessing
copy

	| id |
	id := library getPropertyString: 'AlgorithmName' provider: provider.
	^self class basicNew initialize copyFrom: handle algorithm: id length: objectLength