api-hashes
duplicateHash: oldHandle object: algorithm length: length

	| output status |
	output := self BCRYPT_HASH_HANDLE malloc.
	^[	((status := self BCryptDuplicateHash: oldHandle with: output with: algorithm with: length with: 0) = 0) ifFalse: [ self errorStatus: status ].
		output contents
	] ensure: [ output free ].