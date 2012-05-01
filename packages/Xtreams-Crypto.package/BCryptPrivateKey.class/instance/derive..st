accessing
derive: peer
	| length output agreement status pointer |
	pointer := library BCRYPT_SECRET_HANDLE malloc.
	[	(status := library BCryptSecretAgreement: handle with: peer handle with: pointer with: 0
		) = 0 ifFalse: [ library errorStatus: status ].
		agreement := pointer contents.
	] ensure: [ pointer free ].
	[	length := library deriveKey: agreement into: nil.
		output := ByteArray newInFixedSpace: length.
		length := library deriveKey: agreement into: output.
		length = output size ifFalse: [ self error: 'Output size mismatch!' ]
	] ensure: [ (status := library BCryptDestroySecret: agreement) = 0 ifFalse: [ library errorStatus: status ] ].
	^output