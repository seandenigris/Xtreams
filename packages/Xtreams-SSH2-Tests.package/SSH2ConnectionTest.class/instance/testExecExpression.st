tests
testExecExpression

	| result |
	self client: [ :client || service session |
		service := client connect: User.
		session := service session.
		[	result := session exec: '3 + 4'.
		] ensure: [ session close ].
		client close.
	]
	server: [ :server |
		server accept; waitForDisconnect; close
	]
	timeout: nil.
	self assert: result = '7<n>' expandMacros