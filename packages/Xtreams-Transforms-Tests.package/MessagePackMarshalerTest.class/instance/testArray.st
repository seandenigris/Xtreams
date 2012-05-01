tests
testArray
	| fixed small big |
	big := Array new: 65537 withAll: 1.
	small := (1 to: 255) asArray.
	fixed := Array with: small with: big.
	marshaling put: fixed.
	marshaling put: small.
	marshaling put: big.
	self analyse.
	self assert: marshaling get = fixed.
	self assert: marshaling get = small.
	self assert: marshaling get = big