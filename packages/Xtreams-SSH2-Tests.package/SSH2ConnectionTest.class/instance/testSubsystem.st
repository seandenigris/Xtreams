tests
testSubsystem

	| response response2 |
	self client: [ :client || service session |
		service := client connect: User.
		session := service session.
		session subsystem: 'test@xtreams'.
		[ 	session writing put: 1; close.
			response := session reading get
		] ensure: [ session close ].
		client close.
	]
	server: [ :server |
		server subsystem: 'test@xtreams' do: [ :session || in |
			response2 := (in := session reading) get. in close.
			session writing put: 2; close ].
		server accept; waitForDisconnect; close
	]
	timeout: nil.
	self assert: response = 2.
	self assert: response2 = 1.