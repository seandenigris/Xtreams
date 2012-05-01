tests
testMpintPaddedPositive

	| bytes ssh |
	bytes := '00 00 00 02 00 80' reading decodingHex.
	ssh := bytes ssh2Marshaling.
	self assert: ssh getMpint = 16r80