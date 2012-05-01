initialize-release
reset

	handle ifNotNil: [ library destroyKey: handle. handle := nil ].
	self algorithm: nil mode: nil key: nil iv: nil encrypt: nil