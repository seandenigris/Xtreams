private
streamingReadMatching: aStream inclusive: tail
	^TestReadSubstream on: aStream test: self inclusive: tail