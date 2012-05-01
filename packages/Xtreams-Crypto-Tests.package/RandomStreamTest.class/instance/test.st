tests
test

	self assert: (random get between: 0 and: 255).
	self assert: (random read: 10) size = 10.
	self assert: (random read: 10) class = ByteArray.
	self assert: (random ++ 500) = 500