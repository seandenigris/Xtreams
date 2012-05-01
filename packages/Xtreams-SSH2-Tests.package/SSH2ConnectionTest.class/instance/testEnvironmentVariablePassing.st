tests
testEnvironmentVariablePassing

	| result |
	self client: [ :client || service session |
		service := client connect: User.
		session := service session.
		[	session env: #TheAnswer value: '42'.
			result := session exec: 'ProcessEnvironment current at: #TheAnswer'.
		] ensure: [ session close ].
		client close.
	]
	server: [ :server |
		server accept; waitForDisconnect; close.
	]
	timeout: nil.
	self assert: result = '''42''<n>' expandMacros.