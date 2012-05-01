accessing
get
	cachePosition < cacheDataSize ifFalse: [
		cachePosition := 0.
		cacheDataSize := (1 max: self bytesForRead) min: cache size.
		self readWait.
		cacheDataSize := source readInto: cache startingAt: 1 for: cacheDataSize.
		cacheDataSize isZero ifTrue: [ self incompleteRead: Incomplete zero ] ].
	^cache at: (cachePosition := cachePosition + 1)