private
dssSign: digest with: hostKey

	| dsa signature |
	dsa := (keys at: hostKey) value.
	signature := dsa sign: digest.
	^[ :r :s | (r changeClassTo: ByteArray) reverse, (s changeClassTo: ByteArray) reverse
	] valueWithArguments: (dsa signatureElementsFrom: signature) asArray