tests
testDirectTunnel

	| result1 result2 |
	self client: [ :client || service tunnel |
		service := client connect: User.
		tunnel := service tunnelTo: 'test'.
		[	tunnel writing put: 1; close.
			result1 := tunnel reading get.
		] ensure: [ tunnel close ].
		client close.
	]
	server: [ :server || queue tunnel |
		queue := server openQueueAt: 'test'.
		server accept.
		tunnel := queue next.
		result2 := tunnel reading get.
		tunnel writing put: 2; close.
		server waitForDisconnect; close.
	]
	timeout: nil.
	self assert: result1 = 2.
	self assert: result2 = 1.