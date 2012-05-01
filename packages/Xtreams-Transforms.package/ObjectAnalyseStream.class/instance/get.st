accessing
get
	| details |
	marshaler analyse: self.
	details := log conclusion.
	log := String new writing.
	self complete.
	^details