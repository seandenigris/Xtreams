tests
testMpintPaddedNegative

	| bytes ssh |
	bytes := '00 00 00 05 ff 21 52 41 11' reading decodingHex.
	ssh := bytes ssh2Marshaling.
	self assert: ssh getMpint = -16rDEADBEEF