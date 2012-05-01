accessing
blockSize

	^algorithm ifNil: [ 0 ] ifNotNil: [ algorithm memberAt: #block_size ]