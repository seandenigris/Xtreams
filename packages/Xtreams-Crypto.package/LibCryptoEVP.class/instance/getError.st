utility
getError

	| errno |
	errno := self ERR_get_error.
	self class errorsLoaded ifFalse: [
		self ERR_load_crypto_strings.
		self class errorsLoaded: true ].
	^(self ERR_error_string: errno with: nil) copyCStringFromHeap