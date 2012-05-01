tests
testMpintNegative

	| bytes ssh |
	bytes := '00 00 00 02 ed cc' reading decodingHex.
	ssh := bytes ssh2Marshaling.
	self assert: ssh getMpint = -16r1234