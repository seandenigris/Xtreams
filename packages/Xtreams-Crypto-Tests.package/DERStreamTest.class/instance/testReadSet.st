tests
testReadSet

	self assert: (DERReadStream on: #[49 0] reading) get = Set new.
	self assert: (DERReadStream on: #[49 2 49 0] reading) get = (Set with: Set new).
	self assert: (DERReadStream on: #[49 14 49 6 2 1 1 2 1 2 2 1 3 2 1 4] reading) get = (Set with: (Set with: 1 with: 2) with: 3 with: 4).