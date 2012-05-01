accessing
read: anInteger into: aSequenceableCollection at: startIndex

	| index toRead |
	anInteger isZero ifTrue: [^0].
	index := startIndex.
	toRead := anInteger.
	[toRead > 0] whileTrue: [ | amount |
		cachePosition < cacheDataSize ifFalse: [
			cachePosition := 0.
			self readWait.
			cacheDataSize := (toRead max: self bytesForRead) min: cache size.
			cacheDataSize := source readInto: cache startingAt: 1 for: cacheDataSize.
			cacheDataSize isZero ifTrue: [ self incompleteRead: (Incomplete on: aSequenceableCollection count: anInteger - toRead at: startIndex) ] ].
		amount := (cacheDataSize - cachePosition) min: toRead.
		aSequenceableCollection replaceFrom: index to: index + amount - 1 with: cache startingAt: cachePosition + 1.
		cachePosition := cachePosition + amount.
		index := index + amount.
		toRead := toRead - amount ].
	^anInteger