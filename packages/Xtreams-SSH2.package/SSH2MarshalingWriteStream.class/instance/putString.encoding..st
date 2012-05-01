marshaling
putString: string encoding: encoding

	| bytes |
	bytes := (ByteArray new writing encoding: encoding) write: string; close; terminal.
	^self string: bytes