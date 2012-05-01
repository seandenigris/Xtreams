api-pubkey
sign: digest into: output key: key hash: hash padding: padding

	^self hash: hash padding: padding do: [ :pPaddingInfo :dwFlags |
		self BCryptSignHash: key with: pPaddingInfo
			with: digest with: digest size
			with: output with: output size
			with: outputLength with: dwFlags.
		outputLength contents ]