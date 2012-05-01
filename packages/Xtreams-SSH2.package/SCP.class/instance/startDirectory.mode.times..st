sending
startDirectory: name mode: mode times: times

	times ifNotNil: [ self times: times ].
	out	put: $D;
		write: (mode ifNil: [ '0755' ]);
		write: ' 0 ';
		write: name;
		cr; flush.
	self checkResponse.