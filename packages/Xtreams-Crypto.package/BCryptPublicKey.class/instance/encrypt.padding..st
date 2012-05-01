accessing
encrypt: bytes padding: paddingID

	| length output |
	length := library encrypt: bytes into: nil key: handle padding: paddingID.
	output := ByteArray new: length.
	length := library encrypt: bytes into: output key: handle padding: paddingID.
	length = output size ifFalse: [ self error: 'Output size mismatch!' ].
	^output