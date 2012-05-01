initialize-release
algorithm: algorithm keyType: keyType blob: blob

	type := algorithm.
	(handle := library EVP_PKEY_new) isValid ifFalse: [ self error ].
	(library EVP_PKEY_assign: handle with: keyType with: blob) > 0 ifFalse: [ self error ].