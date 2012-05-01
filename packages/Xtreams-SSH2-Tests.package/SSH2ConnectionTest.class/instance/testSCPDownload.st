tests
testSCPDownload

	| result contents requested |
	contents := self largeContents.
	self client: [ :client || service session |
		service := client connect: User.
		session := service session.
		[	session get: 'test' to: '.' using: [ :path :name :source |
				result := path, '/', name -> source rest ]
		] ensure: [ session close ].
		client close.
	]
	server: [ :server |
		server configuration scpFileSender: [ :scp :list |
			requested := list.
			list do: [ :each | scp file: each source: contents reading size: contents size ] ].
		server accept; waitForDisconnect; close
	]
	timeout: nil.
	self assert: requested asArray = #('test').
	self assert: result key = './test'.
	self assert: result value = contents