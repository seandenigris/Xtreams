accessing
contents
	| cache |
	cache := self contentsSpecies withSize: position.
	destination copyAt: 0 to: cache size: position startingAt: 1.
	^cache