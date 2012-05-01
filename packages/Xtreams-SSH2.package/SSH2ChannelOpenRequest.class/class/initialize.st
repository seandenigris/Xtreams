class initialization
initialize
"
	self initialize
"
	Requests := Dictionary new.
	(self withAllSubclasses select: [ :c | c class methodDictionary includesKey: #channelType ])
		do: [ :c | Requests at: c channelType put: c ].