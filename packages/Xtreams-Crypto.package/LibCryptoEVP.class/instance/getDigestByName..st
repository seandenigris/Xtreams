utility
getDigestByName: aString

	| digest |
	self class digestsLoaded ifFalse: [
		self OpenSSL_add_all_digests.
		self class digestsLoaded: true ].
	digest := self EVP_get_digestbyname: aString.
	digest isValid ifFalse: [ self error: ('Unknown digest <1s>' expandMacrosWith: aString) ].
	^digest