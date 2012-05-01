api-pubkey
decrypt: input into: output key: handle padding: padding

	^self padding: padding do: [ :pPaddingInfo :dwFlags || status |
		((status := self BCryptDecrypt: handle with: input with: input size with: pPaddingInfo
				with: nil with: 0 with: output with: output size with: outputLength with: dwFlags)
		= 0) ifFalse: [ self errorStatus: status ].
		outputLength contents ]