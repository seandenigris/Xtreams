substreaming
closing: aBlock
	^(PositionReadSubstream on: self)
		closeBlock: aBlock;
		yourself