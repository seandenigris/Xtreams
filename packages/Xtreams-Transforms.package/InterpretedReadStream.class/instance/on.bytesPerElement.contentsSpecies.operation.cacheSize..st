initialize-release
on: aReadStream bytesPerElement: anInteger contentsSpecies: aClass operation: aBlock cacheSize: aSize
	super on: aReadStream.
	cacheSize := aSize.
	elementSize := anInteger.
	contentsSpecies := aClass.
	operation := aBlock.
	cache := InterpretedBytes newRecycled: ((elementSize * cacheSize) max: DefaultBufferSize)