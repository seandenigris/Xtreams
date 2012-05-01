accessing
writeOn: stream

	super writeOn: stream.
	stream putString: request channelType encoding: #ascii;
		putUint32: id;
		putUint32: windowSize;
		putUint32: (maxPacketSize ifNil: [ DefaultBufferSize - 100 ]).
	request writeOn: stream