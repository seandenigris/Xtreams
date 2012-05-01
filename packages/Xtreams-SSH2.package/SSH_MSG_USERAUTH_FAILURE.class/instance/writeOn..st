accessing
writeOn: stream

	super writeOn: stream.
	stream putNameList: continue;
		putBoolean: partialSuccess