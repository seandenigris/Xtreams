tests
testUsingEncodingName

	| encoder |
	encoder := Encoder for: #'ms-cp-1252'.
	self assert: (encoder isKindOf: VWEncoder).
	self assert: (encoder encoder isKindOf: StreamEncoder)