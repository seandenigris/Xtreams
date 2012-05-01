accessing
writeOn: stream

	super writeOn: stream.
	stream putUint32: packet