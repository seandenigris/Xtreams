printing
printOn: stream

	super printOn: stream.
	stream nextPut: $(; print: senderID; nextPut: $) ; space; print: windowSize; nextPut: $/; print: maxPacketSize