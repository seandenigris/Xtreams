sending
checkResponse

	| code msg |
	(code := in source get) = 0 ifTrue: [^self].
	code > 2 ifTrue: [ self abort: 'Invalid Response!' ].
	msg := (in ending: CR) rest.
	code = 1
		ifTrue: [ SCPWarning raiseRequestErrorString: msg ]
		ifFalse: [ SCPError raiseErrorString: msg ]