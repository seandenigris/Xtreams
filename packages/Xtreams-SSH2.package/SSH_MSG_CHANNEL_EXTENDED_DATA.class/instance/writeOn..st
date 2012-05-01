accessing
writeOn: stream

	super writeOn: stream.
	stream putUint32: id;
		putUint32: type;
		putString: data