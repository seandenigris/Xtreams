api-ciphers
decrypt: count from: input into: output key: handle iv: ivHandle ivSize: ivSize

	| status |
	((status := self BCryptDecrypt: handle with: input with: count with: nil with: ivHandle with: ivSize with: output with: output size with: outputLength with: 0)
		= 0) ifFalse: [ self errorStatus: status ].
	^outputLength contents