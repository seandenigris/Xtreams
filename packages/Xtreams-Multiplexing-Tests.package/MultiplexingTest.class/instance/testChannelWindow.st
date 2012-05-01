tests
testChannelWindow
	self
		server: [server getOutputChannel write: (ByteArray new: Xtreams.Multiplexer.ChannelWindow + 1 withAll: 1); close]
		client: [self assert: client getInputChannel rest = (ByteArray new: Xtreams.Multiplexer.ChannelWindow + 1 withAll: 1) ]