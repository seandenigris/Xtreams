tests
testWriteSet

	self assert: ((DERWriteStream on: ByteArray new writing) put: (Set new); close; terminal) = #[49 0].
	self assert: ((DERWriteStream on: ByteArray new writing) put: (Set with: (Set new)); close; terminal) = #[49 2 49 0].
	self assert: ((DERWriteStream on: ByteArray new writing) put: (Set with: (Set with: 1 with: 2) with: 3 with: 4); close; terminal) = #[49 14 49 6 2 1 1 2 1 2 2 1 3 2 1 4].