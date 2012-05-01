accessing
writeOn: stream

	stream putString: connectedAddress encoding: #ascii;
		putUint32: connectedPort;
 		putString: originatorAddress encoding: #ascii;
		putUint32: originatorPort