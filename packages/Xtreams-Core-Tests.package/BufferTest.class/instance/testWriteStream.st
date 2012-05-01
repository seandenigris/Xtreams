tests
testWriteStream

	buffer := Buffer on: 'xxxx' copy.
	self assert: buffer cacheSize = 4.
	self assert: buffer activeSize = 0.
	self assert: buffer inactiveSize = 4.
	self assert: buffer readPosition = 0.
	self assert: buffer writePosition = 0.
	self assert: buffer readSize = 0.
	self assert: buffer writeSize = 4.
	buffer write: '1' reading.
	self assert: buffer cache = '1xxx'.
	self assert: buffer cacheSize = 4.
	self assert: buffer activeSize = 1.
	self assert: buffer inactiveSize = 3.
	self assert: buffer readPosition = 0.
	self assert: buffer writePosition = 1.
	self assert: buffer readSize = 1.
	self assert: buffer writeSize = 3.
	buffer write: '234' reading.
	self assert: buffer cache = '1234'.
	self assert: buffer cacheSize = 4.
	self assert: buffer activeSize = 4.
	self assert: buffer inactiveSize = 0.
	self assert: buffer readPosition = 0.
	self assert: buffer writePosition = 4.
	self assert: buffer readSize = 4.
	self assert: buffer writeSize = 0