accessing
writeOn: stream

	super writeOn: stream.
	stream putBoolean: (always_display ifNil: [ false ]);
		putString: message encoding: #utf8;
		putString: (language ifNil: [ '' ]) encoding: #ascii