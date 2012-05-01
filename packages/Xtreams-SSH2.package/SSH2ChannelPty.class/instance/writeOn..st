accessing
writeOn: stream

	stream putString: term encoding: #ascii;
		putUint32: columns;
		putUint32: rows;
		putUint32: width;
		putUint32: height;
		putString: modes