private
streamingWriteMatching: aStream inclusive: tail
	^TestWriteSubstream on: aStream test: self inclusive: tail