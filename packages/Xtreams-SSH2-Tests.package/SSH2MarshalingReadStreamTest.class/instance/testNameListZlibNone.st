tests
testNameListZlibNone

	| bytes ssh |
	bytes := '00 00 00 09 7a 6c 69 62 2c 6e 6f 6e 65' reading decodingHex.
	ssh := bytes ssh2Marshaling.
	self assert: ssh getNameList = #('zlib' 'none')