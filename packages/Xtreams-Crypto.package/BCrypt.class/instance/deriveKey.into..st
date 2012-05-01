api-pubkey
deriveKey: agreement into: output

	| status |
	((status := self BCryptDeriveKey: agreement with: nil with: nil
					with: output with: output size with: outputLength with: 0
	) = 0) ifFalse: [ self errorStatus: status ].
	^outputLength contents