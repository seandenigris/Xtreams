initialize-release
on: aSource
	
	super on: aSource.
	sourceAtEnd := false.
	compression := Compression new inflate.
	input := ByteArray newInFixedSpaceRecycledDefaultSize.
	"output must be in fixed space, otherwise DLLCC will make a copy of it."
	output := ByteArray newInFixedSpaceRecycledDefaultSize.
	unconsumedOut := unconsumedIn := 0.