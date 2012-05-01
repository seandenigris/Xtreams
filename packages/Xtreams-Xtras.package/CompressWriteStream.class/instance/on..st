initialize-release
on: aSource
	
	super on: aSource.
	compression := Compression new deflate.
	input := ByteArray newInFixedSpaceRecycledDefaultSize.
	"output must be in fixed space, otherwise DLLCC will make a copy of it."
	output := ByteArray newInFixedSpaceRecycledDefaultSize.