initialize-release
dhParameters: elements
	<algorithm: #DH action: #parameters2key>
	| output context params |
	type := #DH.
	output := library EVP_PKEY pointerType calloc.
	[	(params := library EVP_PKEY_new) isValid ifFalse: [ self error ].
		(library EVP_PKEY_assign: params with: library EVP_PKEY_DH with: (self dhParametersFrom: elements)) > 0 ifFalse: [ self error ].
		context := library EVP_PKEY_CTX_new: params with: nil.
		(library EVP_PKEY_keygen_init: context) > 0 ifFalse: [ self error ].
		output zeroFill.
		(library EVP_PKEY_keygen: context with: output) > 0 ifFalse: [ self error ].
		handle := output contents
	] ensure: [
		params ifNotNil: [
			params = handle ifTrue: [ self error: 'should not happen' ].
			library EVP_PKEY_free: params ].
		context ifNotNil: [ library EVP_PKEY_CTX_free: context ].
		output free ]