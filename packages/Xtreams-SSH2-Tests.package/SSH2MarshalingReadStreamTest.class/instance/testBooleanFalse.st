tests
testBooleanFalse

	| bytes ssh |
	bytes := '00 00 00 02 00 00' reading decodingHex.
	ssh := bytes ssh2Marshaling.
	self deny: ssh getBoolean