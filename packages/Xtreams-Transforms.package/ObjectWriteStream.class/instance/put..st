accessing
put: object
	marshaler marshal: self object: object.
	self complete.
	^object