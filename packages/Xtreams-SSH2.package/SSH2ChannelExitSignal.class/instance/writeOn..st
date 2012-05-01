accessing
writeOn: stream

	stream putString: name encoding: #ascii;
		putBoolean: coreDumped;
		putString: message encoding: #utf9;
		putString: language encoding: #ascii.