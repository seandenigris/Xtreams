tests
testSCPUpload

	| result contents |
	contents := self largeContents.
	self client: [ :client || service session |
		service := client connect: User.
		session := service session.
		[	session put: 'hello' to: 'test' using: [ :scp :list | scp file: list first source: contents reading size: contents size ]
		] ensure: [ session close ].
		client close.
	]
	server: [ :server |
		server configuration scpFileReceiver: [ :path :name :source |
			result := path -> name -> source rest ].
		server accept; waitForDisconnect; close
	]
	timeout: nil.
	self assert: result key key = 'test'.
	self assert: result key value = 'hello'.
	self assert: result value = contents