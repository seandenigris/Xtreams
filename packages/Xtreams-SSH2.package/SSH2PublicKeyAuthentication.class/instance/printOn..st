printing
printOn: stream

	super printOn: stream.
	stream space; nextPutAll: key typeID; space; nextPutAll: key fingerprint.
	stream space; nextPutAll: (signature ifNil: [ 'no sig' ] ifNotNil: [ 'with sig' ])