initialize-release
release

	handle ifNotNil: [ :h | handle := nil. library destroyHash: h ].
	object ifNotNil: [ :o | object := nil. o free ].
	provider ifNotNil: [ :p | provider := nil. library closeAlgorithmProvider: p ].