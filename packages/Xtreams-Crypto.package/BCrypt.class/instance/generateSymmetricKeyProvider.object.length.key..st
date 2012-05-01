api-ciphers
generateSymmetricKeyProvider: provider object: object length: length key: key

	| output status |
	output := self BCRYPT_KEY_HANDLE malloc.
	^[	((status := self BCryptGenerateSymmetricKey: provider with: output with: object with: length with: key with: key size with: 0) = 0) ifFalse: [ self errorStatus: status ].
		output contents
	] ensure: [ output free ].