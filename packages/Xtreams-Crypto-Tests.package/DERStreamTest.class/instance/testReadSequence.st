tests
testReadSequence

	self assert: (DERReadStream on: #[48 0] reading) get = OrderedCollection new.
	self assert: (DERReadStream on: #[48 2 48 0] reading) get = (OrderedCollection with: OrderedCollection new).
	self assert: (DERReadStream on: #[48 14 48 6 2 1 1 2 1 2 2 1 3 2 1 4] reading) get = (OrderedCollection with: (OrderedCollection with: 1 with: 2) with: 3 with: 4).