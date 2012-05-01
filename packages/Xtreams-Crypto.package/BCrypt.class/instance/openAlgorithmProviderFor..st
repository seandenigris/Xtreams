api-general
openAlgorithmProviderFor: name

	| output status id |
	id := name asCStringEncoding: #utf16.
	output := self BCRYPT_ALG_HANDLE malloc.
	^[	((status := self BCryptOpenAlgorithmProvider: output with: id with: nil with: 0) = 0) ifFalse: [ self errorStatus: status ].
		output contents
	] ensure: [ output free ].