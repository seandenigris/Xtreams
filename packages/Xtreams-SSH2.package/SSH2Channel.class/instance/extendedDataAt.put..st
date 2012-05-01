private-accessing
extendedDataAt: key put: writing

	extendedDataIn size < key ifTrue: [ | replacement |
		replacement := Array new: key.
		replacement replaceFrom: 1 to: extendedDataIn size with: extendedDataIn startingAt: 1.
		extendedDataIn := replacement ].
	extendedDataIn at: key put: writing