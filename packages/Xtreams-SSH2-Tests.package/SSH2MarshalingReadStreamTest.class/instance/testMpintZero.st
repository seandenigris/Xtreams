tests
testMpintZero

	| bytes ssh |
	bytes := '00 00 00 05 00 00 00 00 00' reading decodingHex.
	ssh := bytes ssh2Marshaling.
	self assert: ssh getMpint = 0