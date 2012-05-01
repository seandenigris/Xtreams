accessing
writeOn: stream

	super writeOn: stream.
	stream putString: message encoding: #utf8;
		putString: (language ifNil: [ '' ]) encoding: #ascii.