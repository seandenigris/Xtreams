accessing
writeOn: stream

	super writeOn: stream.
	stream putBoolean: newPassword notNil;
		putString: password encoding: #utf8.
	newPassword ifNotNil: [ stream putString: newPassword encoding: #utf8 ]