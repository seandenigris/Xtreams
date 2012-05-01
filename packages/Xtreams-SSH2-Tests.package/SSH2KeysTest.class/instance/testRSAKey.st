tests
testRSAKey

	| bytes key key2 |
	key := SSH2RSAKey fromElements: self class sampleRSAKey1024.
	bytes := ByteArray new writing ssh2Marshaling.
	key writeOn: bytes.
	bytes := bytes close; terminal.
	key2 := SSH2HostKey readFrom: bytes reading ssh2Marshaling.
	self assert: key typeID = key2 typeID.
	self assert: key n	= key2 n.