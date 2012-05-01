tests
testReverseTunnel

	| result1 result2 sync |
	sync := Semaphore new.
	self client: [ :client || tunnel queue |
		client connect: User.
		queue := client openQueueAt: 'test'.
		sync signal.
		tunnel := queue next.
		[	tunnel writing put: 1; close.
			result1 := tunnel reading get.
		] ensure: [ tunnel close ].
		client closeQueueAt: 'test'.
		client close.
	]
	server: [ :server || tunnel |
		server accept.
		sync wait.
		tunnel := server tunnelTo: 'test'.
		[	result2 := tunnel reading get.
			tunnel writing put: 2; close
		] ensure: [ tunnel close ].
		server waitForDisconnect; close.
	]
	timeout: nil.
	self assert: result1 = 2.
	self assert: result2 = 1.