accessing
decrypt: bytes padding: paddingID

	| length output |
	length := library decrypt: bytes into: nil key: handle padding: paddingID.
	output := ByteArray newInFixedSpace: length.
	length := library decrypt: bytes into: output key: handle padding: paddingID.
	length = output size ifFalse: [ self error: 'Output size mismatch!' ].
	^output