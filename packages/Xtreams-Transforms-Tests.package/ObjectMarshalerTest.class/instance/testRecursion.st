tests
testRecursion
	| value result |
	value := nil asValue.
	value value: value.
	marshaling put: value.
	self analyse.
	result := marshaling get.
	self assert: result value == result