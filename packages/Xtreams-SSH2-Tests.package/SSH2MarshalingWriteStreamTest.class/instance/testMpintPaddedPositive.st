tests
testMpintPaddedPositive

	| bytes ssh destination result |
	bytes := '00 00 00 02 00 80' reading decodingHex rest.
	destination := ByteArray new writing.
	ssh := destination ssh2Marshaling.
	ssh putMpint: 16r80; close.
	result := destination terminal reading read: bytes size.
	self assert: result = bytes