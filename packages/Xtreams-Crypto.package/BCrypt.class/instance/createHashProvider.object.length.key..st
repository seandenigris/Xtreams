api-hashes
createHashProvider: provider object: algorithm length: length key: key

	| output status |
	output := self BCRYPT_HASH_HANDLE malloc.
	^[	((status := self BCryptCreateHash: provider with: output with: algorithm with: length with: key with: key size with: 0) = 0) ifFalse: [ self errorStatus: status ].
		output contents
	] ensure: [ output free ].