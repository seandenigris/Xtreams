tests
testNameListZlib

	| bytes ssh |
	bytes := '00 00 00 04 7a 6c 69 62' reading decodingHex.
	ssh := bytes ssh2Marshaling.
	self assert: ssh getNameList = #('zlib')