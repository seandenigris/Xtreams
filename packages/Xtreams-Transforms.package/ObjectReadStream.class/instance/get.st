accessing
get
	| object |
	object := marshaler unmarshal: self.
	self complete.
	^object