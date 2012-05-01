utility
bn2bin: bnPointer

	| len bytes |
	len := self BN_num_bytes: bnPointer.
	bytes := ByteArray new: len.
	len = (self BN_bn2bin: bnPointer with: bytes) ifFalse: [ self error: 'bn2bin conversion error!' ].
	^bytes