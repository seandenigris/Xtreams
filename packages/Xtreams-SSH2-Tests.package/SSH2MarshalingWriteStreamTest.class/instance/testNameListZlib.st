tests
testNameListZlib

	| bytes ssh destination |
	bytes := '00 00 00 04 7a 6c 69 62' reading decodingHex rest.
	destination := ByteArray new writing.
	ssh := destination ssh2Marshaling.
	ssh putNameList: #('zlib'); close.
	self assert: (destination terminal reading read: bytes size) = bytes