tests - messages
testReadingWritingKEXINIT

	| msg bytes msg2 |
	msg := SSH_MSG_KEXINIT from: SSH2Configuration.
	bytes := ByteArray new writing ssh2Marshaling.
	msg writeOn: bytes.
	bytes := bytes close; terminal.
	self assert: bytes = msg bytes.
	msg2 := SSH2Message readFrom: bytes reading ssh2Marshaling.
	self assert: msg bytes = msg2 bytes.