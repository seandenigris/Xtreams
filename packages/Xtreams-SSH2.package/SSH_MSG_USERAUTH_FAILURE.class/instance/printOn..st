printing
printOn: stream

	super printOn: stream.
	stream space; print: continue.
	partialSuccess ifTrue: [ stream space; nextPutAll: '(partial success)' ]