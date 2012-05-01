class initialization
initialize
"
	self initialize
"
	Requests := Dictionary new.
	(self withAllSubclasses select: [ :c | c class methodDictionary includesKey: #requestType ])
		do: [ :c | Requests at: c requestType put: c ].