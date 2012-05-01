accessing
writeOn: stream

	super writeOn: stream.
	stream
		putString: name encoding: #ascii;
		putBoolean: wantReply;
		"In theory this part is variable but the only two requests defined have the same structure."
		putString: address encoding: #ascii;
		putUint32: port