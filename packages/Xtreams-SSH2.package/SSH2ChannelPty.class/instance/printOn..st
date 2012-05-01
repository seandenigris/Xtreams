printing
printOn: stream

	super printOn: stream.
	stream space; nextPutAll: term;
		space; print: columns; nextPut: $@; print: rows;
		nextPutAll: ' / '; print: width; nextPut: $@; print: height;
		nextPutAll: ' modes['; print: modes size; nextPut: $]