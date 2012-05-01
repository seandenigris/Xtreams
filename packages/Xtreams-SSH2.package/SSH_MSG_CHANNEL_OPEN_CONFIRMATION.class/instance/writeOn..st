accessing
writeOn: stream

	super writeOn: stream.
	stream putUint32: id;
		putUint32: senderID;
		putUint32: windowSize;
		putUint32: (maxPacketSize ifNil: [ DefaultBufferSize - 100 ]).