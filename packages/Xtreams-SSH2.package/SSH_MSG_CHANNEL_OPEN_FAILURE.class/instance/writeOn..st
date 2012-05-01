accessing
writeOn: stream

	super writeOn: stream.
	stream putUint32: id;
		putUint32: reason;
		putString: description encoding: #utf8;
		putString: (language ifNil: ['']) encoding: #ascii