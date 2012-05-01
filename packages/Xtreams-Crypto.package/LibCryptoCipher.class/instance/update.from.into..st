accessing
update: count from: input into: output

	(library EVP_CipherUpdate: context with: output with: outLen with: input with: count) = 1 ifFalse: [ self externalCallFailed ].
	^outLen contents