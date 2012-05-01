substreaming
closing: aBlock
	^(PositionWriteSubstream on: self)
		closeBlock: aBlock;
		yourself