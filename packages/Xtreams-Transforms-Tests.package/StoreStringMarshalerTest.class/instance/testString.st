tests
testString
	marshaling put: 'testing Ω'.
	self analyse.
	self assert: marshaling get = 'testing Ω'