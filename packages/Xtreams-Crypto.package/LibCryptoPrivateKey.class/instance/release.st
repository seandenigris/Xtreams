initialize-release
release

	type := nil.
	handle ifNotNil: [ :h | handle := nil. library EVP_PKEY_free: h ]