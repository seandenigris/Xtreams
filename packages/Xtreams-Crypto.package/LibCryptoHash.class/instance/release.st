initialize-release
release

	context ifNotNil: [
		library EVP_MD_CTX_cleanup: context.
		context free.
		context := nil ]