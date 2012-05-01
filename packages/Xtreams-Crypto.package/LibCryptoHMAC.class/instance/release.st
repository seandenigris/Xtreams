initialize-release
release

	context ifNotNil: [
		library HMAC_CTX_cleanup: context.
		context free.
		context := nil ]