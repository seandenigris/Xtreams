accessing
writeOn: stream

	super writeOn: stream.
	stream putString: key typeID encoding: #ascii;
		putString: key bytes