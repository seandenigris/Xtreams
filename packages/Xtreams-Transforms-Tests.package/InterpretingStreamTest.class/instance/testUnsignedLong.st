tests
testUnsignedLong
	| interpreting |
	stream := ByteArray new writing.
	interpreting := stream interpreting: #long.
	65000 to: 70000 do: [:each | interpreting put: each].
	self assert: (stream contents reading interpreting: #long) rest asArray = (65000 to: 70000)