instance creation
on: aWriteStream type: aType cacheSize: aSize
	| interpretation |
	interpretation := InterpretedBytes perform: aType.
	^self on: aWriteStream bytesPerElement: (interpretation at: 1) contentsSpecies: (interpretation at: 2) operation: (interpretation at: 4) cacheSize: aSize