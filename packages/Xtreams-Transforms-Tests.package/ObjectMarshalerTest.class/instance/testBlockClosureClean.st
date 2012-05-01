tests
testBlockClosureClean
	marshaling put: [].
	marshaling put: [:x :y | x + y].
	self analyse.
	self assert: marshaling get value = nil.
	self assert: (marshaling get value: 2 value: 3) = 5