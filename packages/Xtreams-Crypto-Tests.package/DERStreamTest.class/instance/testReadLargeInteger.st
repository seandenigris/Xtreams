tests
testReadLargeInteger

	self assert: (DERReadStream on: (#[2 65 1], (ByteArray new: 64 withAll: 0)) reading) get = (2**512).
	self assert: (DERReadStream on: (#[2 66 0 128], (ByteArray new: 64 withAll: 0)) reading) get = (2**519).
	self assert: (DERReadStream on: (#[2 65 255], (ByteArray new: 64 withAll: 0)) reading) get = (2**512) negated.
	self assert: (DERReadStream on: (#[2 66 255 127], (ByteArray new: 64 withAll: 255)) reading) get = ((2**519) negated - 1).