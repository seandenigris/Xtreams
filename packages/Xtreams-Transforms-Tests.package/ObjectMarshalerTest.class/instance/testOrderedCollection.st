tests
testOrderedCollection
	| result |
	marshaling put: (OrderedCollection new add: #test; add: 'test'; add: 5; yourself).
	self analyse.
	result := marshaling get.
	self assert: result first = #test.
	self assert: (result at: 2) = 'test'.
	self assert: result last = 5