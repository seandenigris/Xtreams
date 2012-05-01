accessing
writeOn: stream

	| sigBytes |
	sigBytes := ByteArray new writing ssh2Marshaling.
	sigBytes putString: hostKey typeID encoding: #ascii;
		putString: signature.
	sigBytes := sigBytes close; terminal.
	super writeOn: stream.
	stream putString: hostKey bytes;
		putMpint: f;
		putString: sigBytes