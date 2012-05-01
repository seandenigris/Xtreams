tests
testMpintZero

	| bytes ssh destination |
	bytes := '00 00 00 00' reading decodingHex rest.
	destination := ByteArray new writing.
	ssh := destination ssh2Marshaling.
	ssh putMpint: 0; close.
	self assert: (destination terminal reading read: bytes size) = bytes