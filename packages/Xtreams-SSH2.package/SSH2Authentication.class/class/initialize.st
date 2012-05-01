class initialization
initialize
"
	self initialize
"
	Methods := Dictionary new.
	(self withAllSubclasses select: [ :c | c class methodDictionary includesKey: #methodID ])
		do: [ :c | Methods at: c methodID put: c ].