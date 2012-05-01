utility
getCipherByName: aString

	| cipher |
	self class ciphersLoaded ifFalse: [
		self OpenSSL_add_all_ciphers.
		self class ciphersLoaded: true ].
	cipher := self EVP_get_cipherbyname: aString.
	cipher isValid ifFalse: [ self error: ('Unknown cipher <1s>' expandMacrosWith: aString) ].
	^cipher