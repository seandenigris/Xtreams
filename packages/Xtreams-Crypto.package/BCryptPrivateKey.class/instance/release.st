initialize-release
release

	handle ifNotNil: [ :h | handle := nil. library destroyKey: h ].
	provider ifNotNil: [ :p | provider := nil. library closeAlgorithmProvider: p ].