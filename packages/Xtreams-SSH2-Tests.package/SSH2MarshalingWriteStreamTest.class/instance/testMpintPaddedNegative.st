tests
testMpintPaddedNegative

	| bytes ssh destination |
	bytes := '00 00 00 05 ff 21 52 41 11' reading decodingHex rest.
	destination := ByteArray new writing.
	ssh := destination ssh2Marshaling.
	ssh putMpint: -16rDEADBEEF; close.
	self assert: (destination terminal reading read: bytes size) = bytes