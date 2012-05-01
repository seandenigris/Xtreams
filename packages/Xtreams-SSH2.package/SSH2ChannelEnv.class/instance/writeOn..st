accessing
writeOn: stream

	stream putString: name encoding: #ascii;
		putString: value encoding: #ascii