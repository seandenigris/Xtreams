tests
testReadSmallInteger

	self assert: (DERReadStream on: #[2 0] reading) get = 0.
	self assert: (DERReadStream on: #[2 1 0] reading) get = 0.
	self assert: (DERReadStream on: #[2 1 1] reading) get = 1.
	self assert: (DERReadStream on: #[2 1 2r11111111] reading) get = -1.
	self assert: (DERReadStream on: #[2 1 2r101] reading) get = 5.
	self assert: (DERReadStream on: #[2 1 2r110] reading) get = 6.
	self assert: (DERReadStream on: #[2 1 2r11111011] reading) get = -5.
	self assert: (DERReadStream on: #[2 1 2r11111010] reading) get = -6.