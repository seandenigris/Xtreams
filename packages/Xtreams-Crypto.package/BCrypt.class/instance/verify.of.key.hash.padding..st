api-pubkey
verify: signature of: digest key: key hash: hash padding: padding

	^self hash: hash padding: padding do: [ :pPaddingInfo :dwFlags || status |
		status := self BCryptVerifySignature: key with: pPaddingInfo
			with: digest with: digest size
			with: signature with: signature size
			with: dwFlags.
		(#(	16rC000A000 "STATUS_INVALID_SIGNATURE"
			0 "STATUS_SUCCESS"
		) includes: status) ifFalse: [ self errorStatus: status ].
		status isZero ]