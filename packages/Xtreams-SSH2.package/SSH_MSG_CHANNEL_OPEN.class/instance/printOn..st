printing
printOn: stream

	super printOn: stream.
	stream space; print: request;
		space; print: windowSize; nextPut: $/; print: maxPacketSize