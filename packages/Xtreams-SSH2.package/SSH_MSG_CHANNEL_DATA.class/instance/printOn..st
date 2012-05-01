printing
printOn: stream

	super printOn: stream.
	stream nextPut: $[; print: size; nextPut: $]