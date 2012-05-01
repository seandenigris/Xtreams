tests
testNameListEmpty

	| bytes ssh destination |
	bytes := '00 00 00 00' reading decodingHex rest.
	destination := ByteArray new writing.
	ssh := destination ssh2Marshaling.
	ssh putNameList: #(); close.
	self assert: (destination terminal reading read: bytes size) = bytes