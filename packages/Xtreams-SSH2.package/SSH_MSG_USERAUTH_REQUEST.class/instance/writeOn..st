accessing
writeOn: stream

	super writeOn: stream.
	stream putString: user encoding: #utf8;
		putString: service encoding: #ascii.
	authentication writeOn: stream