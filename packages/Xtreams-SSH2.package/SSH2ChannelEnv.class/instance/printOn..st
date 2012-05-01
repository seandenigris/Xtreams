printing
printOn: stream

	super printOn: stream.
	stream space; nextPutAll: name; nextPutAll: ' -> '; nextPutAll: value