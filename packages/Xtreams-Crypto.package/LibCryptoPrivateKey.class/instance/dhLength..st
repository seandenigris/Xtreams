initialize-release
dhLength: bitSize
	<algorithm: #DH action: #size2key>
	| output context params pcontext |
	type := #DH.
	output := library EVP_PKEY pointerType calloc.
	[	pcontext := library EVP_PKEY_CTX_new_id: library EVP_PKEY_DH with: nil.
		(library EVP_PKEY_paramgen_init: pcontext) > 0 ifFalse: [ self error ].
		(library EVP_PKEY_CTX_ctrl: pcontext with: library EVP_PKEY_DH
				with: 2 "EVP_PKEY_OP_PARAMGEN"
				with: 16r1001 "#define EVP_PKEY_CTRL_DSA_PARAMGEN_BITS   (EVP_PKEY_ALG_CTRL + 1)"
				with: bitSize with: nil) > 0 ifFalse: [ self error ].
		(library EVP_PKEY_paramgen: pcontext with: output) > 0 ifFalse: [ self error ].
		params := output contents.
		context := library EVP_PKEY_CTX_new: params with: nil.
		(library EVP_PKEY_keygen_init: context) > 0 ifFalse: [ self error ].
		output zeroFill.
		(library EVP_PKEY_keygen: context with: output) > 0 ifFalse: [ self error ].
		handle := output contents
	] ensure: [
		params ifNotNil: [
			params = handle ifTrue: [ self error: 'should not happen' ].
			library EVP_PKEY_free: params ].
		pcontext ifNotNil: [ library EVP_PKEY_CTX_free: pcontext ].
		context ifNotNil: [ library EVP_PKEY_CTX_free: context ].
		output free ]