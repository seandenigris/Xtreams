class initialization
initialize
"
	self initialize
"
	CodeToKey := Dictionary new.
	(self allSubclasses select: [ :c | c class methodDictionary includesKey: #typeID ])
		do: [ :c | CodeToKey at: c typeID put: c ].