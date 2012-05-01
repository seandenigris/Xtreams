accessing
printOn: stream

	super printOn: stream.
	stream space; print: width; nextPut: $x; print: height;
		nextPutAll: ' ('; print: pixelWidth; nextPut: $x; print: pixelHeight; nextPut: $)