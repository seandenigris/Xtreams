accessing
finishInto: output

	(library EVP_CipherFinal_ex: context with: output with: outLen) = 1 ifFalse: [ self externalCallFailed ].
	^outLen contents