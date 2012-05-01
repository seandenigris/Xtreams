initialize-release
setUp
	| pipe |
	(OSHandle currentOS = #win32) ifTrue: [self error: 'Does not work on Windows' ].
	pipe := OSSystemSupport concreteClass pipeAccessorClass openPair.
	input := pipe first reading.
	output := pipe last writing.