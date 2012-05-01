initialize-release
setUp

	pointer := CIntegerType unsignedChar malloc: 1.
	(input := pointer reading) contentsSpecies: ByteArray.
	(output := pointer writing) contentsSpecies: ByteArray