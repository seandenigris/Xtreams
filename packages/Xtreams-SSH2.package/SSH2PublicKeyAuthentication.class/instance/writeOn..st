accessing
writeOn: stream

	super writeOn: stream.
	stream putBoolean: signature notNil;
		putString: algorithm encoding: #ascii;
		putString: key bytes.
	signature ifNotNil: [ | sigBytes |
		sigBytes := ByteArray new writing ssh2Marshaling.
		sigBytes putString: key typeID encoding: #ascii;
			putString: signature.
		sigBytes := sigBytes close; terminal.
		stream putString: sigBytes ]