accessing
writeOn: stream

	super writeOn: stream.
	stream putUint32: id.
	stream putString: request requestType encoding: #ascii.
	stream putBoolean: (wantReply ifNil: [ false ]).
	request writeOn: stream