tests
testBlockClosureDirty
	| a a_original a_copy |
	a := 1.
	a_original := [a].
	marshaling put: a_original.
	self analyse.
	a_copy := marshaling get.
	self assert: a_original value = 1.
	self assert: a_copy value = 1.
	a := 2.
	self assert: a_original value = 2.
	self assert: a_copy value = 1