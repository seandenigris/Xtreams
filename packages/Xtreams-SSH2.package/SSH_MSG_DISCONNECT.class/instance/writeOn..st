accessing
writeOn: stream

	super writeOn: stream.
	stream putUint32: code;
		putString: description encoding: #utf8;
		putString: (language ifNil: [ '' ]) encoding: #ascii