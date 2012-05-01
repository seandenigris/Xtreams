accessing
blockSize

	^blockSize ifNil: [ blockSize := library getPropertyDWORD: 'BlockLength' provider: provider ]