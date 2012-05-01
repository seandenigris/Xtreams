utility
bin2bn: bytes

	| bnPointer |
	(bnPointer := self BN_bin2bn: bytes with: bytes size with: nil) isValid ifFalse: [ self error: 'bin2bn conversion error!' ].
	^bnPointer