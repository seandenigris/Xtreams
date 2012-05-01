initialize-release
release

	handle ifNotNil: [ :h | handle := nil. library destroyKey: h ].
	ivObject ifNotNil: [ :o | ivObject := nil. o free.  ].
	object ifNotNil: [ :o | object := nil. o free ].
	provider ifNotNil: [ :p | provider := nil. library closeAlgorithmProvider: p ].
	key := iv := encrypt := nil