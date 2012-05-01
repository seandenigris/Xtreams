api-pubkey
generateDHKeyProvider: provider size: bitSize parameters: paramBlob

	| output status handle |
	output := self BCRYPT_KEY_HANDLE malloc.
	[	((status := self BCryptGenerateKeyPair: provider with: output with: bitSize with: 0
		) = 0) ifFalse: [ self errorStatus: status ].
		handle := output contents
	] ensure: [ output free ].
	self setPropertyBytes: 'DHParameters' handle: handle value: paramBlob.
	((status := self BCryptFinalizeKeyPair: handle with: 0) = 0) ifFalse: [ self errorStatus: status ].
	^handle