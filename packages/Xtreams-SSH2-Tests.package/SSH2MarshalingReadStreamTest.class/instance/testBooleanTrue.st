tests
testBooleanTrue

	| bytes ssh |
	bytes := '01' reading decodingHex.
	ssh := bytes ssh2Marshaling.
	self assert: ssh getBoolean