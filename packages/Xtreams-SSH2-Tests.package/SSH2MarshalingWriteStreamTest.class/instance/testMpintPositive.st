tests
testMpintPositive

	| bytes ssh destination result |
	bytes := '00 00 00 08 09 a3 78 f9 b2 e3 32 a7' reading decodingHex rest.
	destination := ByteArray new writing.
	ssh := destination ssh2Marshaling.
	ssh putMpint: 16r9a378f9b2e332a7; close.
	result := destination terminal reading read: bytes size.
	self assert: result = bytes