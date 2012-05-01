accessing
bytes

	| bytes |
	bytes := ByteArray new writing ssh2Marshaling.
	self writeOn: bytes.
	^bytes close; terminal.