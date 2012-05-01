converting
reading
	self numArgs = 0 ifTrue: [^BlockClosureReadStream on: self].
	self numArgs = 1 ifTrue: [^BlockClosureGenerateStream on: self].
	self error: 'More arguments than we can poke a stick at!'