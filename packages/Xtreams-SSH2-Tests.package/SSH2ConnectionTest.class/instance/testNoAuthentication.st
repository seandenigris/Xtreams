tests
testNoAuthentication

	self client: [ :client |
		self should: [ client connect: nil ] raise: Error.
		client close.
	]
	server: [ :server |
		server accept; waitForDisconnect; close
	]
	timeout: nil.