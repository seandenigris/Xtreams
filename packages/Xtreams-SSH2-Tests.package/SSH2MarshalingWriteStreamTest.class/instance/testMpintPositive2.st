tests
testMpintPositive2

	| bytes ssh destination result |
	bytes := '00 00 00 01 7f' reading decodingHex rest.
	destination := ByteArray new writing.
	ssh := destination ssh2Marshaling.
	ssh putMpint: 16r7f; close.
	result := destination terminal reading read: bytes size.
	self assert: result = bytes