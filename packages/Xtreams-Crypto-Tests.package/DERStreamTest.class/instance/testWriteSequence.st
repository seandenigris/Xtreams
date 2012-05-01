tests
testWriteSequence

	self assert: ((DERWriteStream on: ByteArray new writing) put: #(); close; terminal) = #[48 0].
	self assert: ((DERWriteStream on: ByteArray new writing) put: #(()); close; terminal) = #[48 2 48 0].
	self assert: ((DERWriteStream on: ByteArray new writing) put: #((1 2) 3 4); close; terminal) = #[48 14 48 6 2 1 1 2 1 2 2 1 3 2 1 4].