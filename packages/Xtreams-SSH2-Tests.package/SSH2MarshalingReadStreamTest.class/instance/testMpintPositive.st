tests
testMpintPositive

	| bytes ssh |
	bytes := '00 00 00 08 09 a3 78 f9 b2 e3 32 a7' reading decodingHex.
	ssh := bytes ssh2Marshaling.
	self assert: ssh getMpint = 16r9a378f9b2e332a7