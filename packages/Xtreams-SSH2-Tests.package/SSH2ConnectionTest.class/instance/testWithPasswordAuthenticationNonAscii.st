tests
testWithPasswordAuthenticationNonAscii

	| pwd |
	pwd := 'äöüß'.
	self client: [ :client |
		client configuration userauthMethods: #('password').
		[ client connect: User ] on: SSH2PasswordRequest do: [ :ex | ex resume: pwd ].
		client close
	]
	server: [ :server |
		server configuration userauthMethods: #('password').
		server passwordValidator: [ :user :password | password = pwd ]. 
		server accept; waitForDisconnect; close
	]
	timeout: nil.