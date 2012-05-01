initialize-release
release

	context ifNotNil: [
		outLen free. outLen := nil.
		[	(library EVP_CIPHER_CTX_cleanup: context) = 1 ifFalse: [ self externalCallFailed ].
		] ensure: [ context free. context := nil ] ]