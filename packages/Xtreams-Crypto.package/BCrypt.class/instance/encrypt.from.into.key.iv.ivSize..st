api-ciphers
encrypt: count from: input into: output key: handle iv: ivHandle ivSize: ivSize

	| status |
	((status := self BCryptEncrypt: handle with: input with: count with: nil with: ivHandle with: ivSize with: output with: output size with: outputLength with: 0)
		= 0) ifFalse: [ self errorStatus: status ].
	^outputLength contents