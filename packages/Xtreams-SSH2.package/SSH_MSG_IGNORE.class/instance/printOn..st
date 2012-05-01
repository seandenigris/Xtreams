printing
printOn: stream

	super printOn: stream.
	stream space; nextPut:$[; print: data size; nextPut: $]