initialize-release
release

	keys ifNotNil: [ :k | keys := nil. k release ].
	random ifNotNil: [ :r | random := nil. r close ]