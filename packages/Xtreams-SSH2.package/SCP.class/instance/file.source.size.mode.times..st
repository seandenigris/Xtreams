sending
file: name source: source size: size mode: mode times: times

	session ifNotNil: [ session announce: (SCPFile new incoming: false; path: path; name: name; length: size) ].
	times ifNotNil: [ self times: times ].
	out	put: $C;
		write: (mode ifNil: [ '0644' ]);
		space; print: size;
		space; write: name;
		cr; flush.
	self checkResponse.
	out destination
		write: size from: source;
		put: 0; flush. "NULL"
	self checkResponse