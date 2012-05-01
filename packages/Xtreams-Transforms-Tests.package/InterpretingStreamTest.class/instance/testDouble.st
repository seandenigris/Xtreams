tests
testDouble
	| interpreting |
	stream := ByteArray new writing.
	interpreting := stream interpreting: #double.
	interpreting put: (SmallInteger minVal - 1.5).
	interpreting put: (SmallInteger maxVal + 1.5).
	interpreting := stream contents reading interpreting: #double.
	self assert: interpreting get = (SmallInteger minVal - 1.5).
	self assert: interpreting get = (SmallInteger maxVal + 1.5)