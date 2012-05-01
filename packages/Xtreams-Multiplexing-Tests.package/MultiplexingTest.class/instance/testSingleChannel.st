tests
testSingleChannel
	self
		server: [server getOutputChannel write: #[ 1 2 3 4 5 ]; close]
		client: [self assert: client getInputChannel rest = #[ 1 2 3 4 5 ] ]