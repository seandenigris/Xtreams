api-general
openHMACAlgorithmProviderFor: name

	| output status id |
	id := name asCStringEncoding: #utf16.
	output := self BCRYPT_ALG_HANDLE malloc.
	^[	((status := self BCryptOpenAlgorithmProvider: output with: id with: nil with: self BCRYPT_ALG_HANDLE_HMAC_FLAG) = 0) ifFalse: [ self errorStatus: status ].
		output contents
	] ensure: [ output free ].