tests
testDSAKey

	| bytes key key2 |
	key := SSH2DSSKey fromElements: self class sampleDSAKey512.
	bytes := ByteArray new writing ssh2Marshaling.
	key writeOn: bytes.
	bytes := bytes close; terminal.
	key2 := SSH2HostKey readFrom: bytes reading ssh2Marshaling.
	self assert: key typeID = key2 typeID.
	self assert: key p	= key2 p.