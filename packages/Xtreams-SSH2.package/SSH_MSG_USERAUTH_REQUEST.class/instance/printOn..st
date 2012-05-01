printing
printOn: stream

	super printOn: stream.
	stream space; nextPutAll: user; nextPut: $@; nextPutAll: service;
		space.
	authentication printOn: stream.