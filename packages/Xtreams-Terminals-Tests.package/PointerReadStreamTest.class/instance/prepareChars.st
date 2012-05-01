initialize-release
prepareChars

	values := 'Hello World!'.
	pointer := CIntegerType char malloc: values size.
	pointer copyAt: 0 from: values size: values size startingAt: 1