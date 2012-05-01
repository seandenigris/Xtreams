converting
writing
	self numArgs = 1 ifTrue: [^BlockClosureWriteStream on: self].
	self error: 'Must be a single argument block.'