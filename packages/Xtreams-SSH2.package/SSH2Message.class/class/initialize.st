class initialization
initialize
"
	self initialize
"
	CodeToMessage := IdentityDictionary new.
	(self allSubclasses select: [ :c | c class methodDictionary includesKey: #msgID ])
		do: [ :c | CodeToMessage at: c msgID put: c ].