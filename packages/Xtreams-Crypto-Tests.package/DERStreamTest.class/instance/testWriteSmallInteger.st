tests
testWriteSmallInteger

	self assert: ((DERWriteStream on: ByteArray new writing) put: 0; close; terminal) = #[2 0].
	self assert: ((DERWriteStream on: ByteArray new writing) put: 1; close; terminal) = #[2 1 1].
	self assert: ((DERWriteStream on: ByteArray new writing) put: -1; close; terminal) = #[2 1 255].
	self assert: ((DERWriteStream on: ByteArray new writing) put: -2; close; terminal) = #[2 1 254].
	self assert: ((DERWriteStream on: ByteArray new writing) put: 5; close; terminal) = #[2 1 5].
	self assert: ((DERWriteStream on: ByteArray new writing) put: -5; close; terminal) = #[2 1 2r11111011].
	self assert: ((DERWriteStream on: ByteArray new writing) put: 255; close; terminal) = #[2 2 0 255].
	self assert: ((DERWriteStream on: ByteArray new writing) put: -128; close; terminal) = #[2 1 2r10000000].
	self assert: ((DERWriteStream on: ByteArray new writing) put: -129; close; terminal) = #[2 2 255 2r01111111].