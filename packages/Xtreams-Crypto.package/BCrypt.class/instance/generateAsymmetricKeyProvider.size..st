api-pubkey
generateAsymmetricKeyProvider: provider size: bitSize

	| output status handle |
	output := self BCRYPT_KEY_HANDLE malloc.
	[	((status := self BCryptGenerateKeyPair: provider with: output with: bitSize with: 0
		) = 0) ifFalse: [ self errorStatus: status ].
		handle := output contents
	] ensure: [ output free ].
	((status := self BCryptFinalizeKeyPair: handle with: 0) = 0) ifFalse: [ self errorStatus: status ].
	^handle