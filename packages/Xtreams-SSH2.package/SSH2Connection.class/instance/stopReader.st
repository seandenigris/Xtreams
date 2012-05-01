initialize-release
stopReader

	| process |
	process := reader.
	reader := nil.
	process notNil ifTrue: [ process terminate ].