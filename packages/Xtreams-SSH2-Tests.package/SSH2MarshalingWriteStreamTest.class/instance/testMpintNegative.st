tests
testMpintNegative

	| bytes ssh destination |
	bytes := '00 00 00 02 ed cc' reading decodingHex rest.
	destination := ByteArray new writing.
	ssh := destination ssh2Marshaling.
	ssh putMpint: -16r1234; close.
	self assert: (destination terminal reading read: bytes size) = bytes