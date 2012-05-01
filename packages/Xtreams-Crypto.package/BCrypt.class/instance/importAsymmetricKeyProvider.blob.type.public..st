api-pubkey
importAsymmetricKeyProvider: provider blob: blob type: algorithm public: boolean

	| output status |
	output := self BCRYPT_KEY_HANDLE malloc.
	^[	((status := self BCryptImportKeyPair: provider with: nil
					with: (self blobIdFor: algorithm public: boolean)
					with: output with: blob with: blob size with: 0
		) = 0) ifFalse: [ self errorStatus: status ].
		output contents
	] ensure: [ output free ].