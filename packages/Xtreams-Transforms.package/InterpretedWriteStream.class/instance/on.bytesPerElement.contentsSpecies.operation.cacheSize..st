initialize-release
on: aWriteStream bytesPerElement: anInteger contentsSpecies: aClass operation: aBlock cacheSize: aSize
	super on: aWriteStream.
	cacheSize := aSize.
	elementSize := anInteger.
	contentsSpecies := aClass.
	operation := aBlock.
	cache := InterpretedBytes newRecycled: ((elementSize * cacheSize) max: DefaultBufferSize)