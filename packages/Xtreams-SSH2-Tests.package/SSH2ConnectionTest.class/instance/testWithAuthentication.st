tests
testWithAuthentication

	self client: [ :client |
		client connect: User; close
	]
	server: [ :server |
		server accept; waitForDisconnect; close
	]
	timeout: nil.