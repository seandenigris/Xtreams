tests
testNameListZlibNone

	| bytes ssh destination |
	bytes := '00 00 00 09 7a 6c 69 62 2c 6e 6f 6e 65' reading decodingHex rest.
	destination := ByteArray new writing.
	ssh := destination ssh2Marshaling.
	ssh putNameList: #('zlib' 'none'); close.
	self assert: (destination terminal reading read: bytes size) = bytes