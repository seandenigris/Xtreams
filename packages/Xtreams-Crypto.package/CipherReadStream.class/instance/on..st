initialize-release
on: aSource

	super on: aSource.
	cipher := Cipher new.
	input := ByteArray newInFixedSpaceRecycledDefaultSize.
	"output must be in fixed space, otherwise DLLCC will make a copy of it."
	output := ByteArray newInFixedSpaceRecycledDefaultSize.
	maxInputChunk := input size - cipher maxBlockLength.
	unconsumed := 0.