accessing
writeOn: stream

	stream putString: destinationAddress encoding: #ascii;
		putUint32: destinationPort;
 		putString: originatorAddress encoding: #ascii;
		putUint32: originatorPort