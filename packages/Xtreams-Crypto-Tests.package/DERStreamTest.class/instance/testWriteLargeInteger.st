tests
testWriteLargeInteger

	self assert: (((DERWriteStream on: ByteArray new writing) put: 2**512; close; terminal) beginsWith: #[2 65 1 0 0 0 0]).
	self assert: (((DERWriteStream on: ByteArray new writing) put: 2**519; close; terminal) beginsWith: #[2 66 0 128 0 0 0]).
	self assert: (((DERWriteStream on: ByteArray new writing) put: (2**519) negated - 1; close; terminal) beginsWith: #[2 66 255 127 255 255 255]).
	self assert: (((DERWriteStream on: ByteArray new writing) put: (2**512) negated; close; terminal) beginsWith: #[2 65 255 0 0 0 0]).