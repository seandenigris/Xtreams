printing
printOn: stream

	super printOn: stream.
	stream space; print: code; space; nextPutAll: description