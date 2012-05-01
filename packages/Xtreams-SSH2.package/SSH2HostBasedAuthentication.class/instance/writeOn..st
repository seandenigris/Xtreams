accessing
writeOn: stream

	super writeOn: stream.
	stream putString: algorithm encoding: #ascii;
		putString: key;
		putString: host encoding: #ascii;
		putString: user encoding: #utf8;
		putString: signature.