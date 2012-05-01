accessing
put: anObject

	buffer cacheSize > buffer activeSize ifFalse: [self flush].
	buffer put: anObject.
	^1