accessing
writeOn: stream

	super writeOn: stream.
	stream
		putMpint: p;
		putMpint: q;
		putMpint: g;
		putMpint: y