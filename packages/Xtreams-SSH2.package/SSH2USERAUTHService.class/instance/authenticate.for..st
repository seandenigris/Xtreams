private-client
authenticate: aUser for: aService

	| response authentications |
	user := aUser.
	service := aService.
	authentications := OrderedCollection new.
	connection configuration userauthMethods do: [ :method |
		method = 'password' ifTrue: [ authentications add: (SSH2PasswordAuthentication new connection: connection) ].
		method = 'publickey' ifTrue: [
			connection configuration keys keys keys collect: [ :key |
				authentications add: ((SSH2PublicKeyAuthentication key: key) connection: connection) ] ].
		method = 'hostbased' ifTrue: [
			authentications add: (SSH2HostBasedAuthentication new connection: connection) ] ].
	response := SSH2Authentication new connection: connection; authenticate: user for: service.
	[	response isSuccess or: [ authentications isEmpty ]
	] whileFalse: [ | next |
		next := authentications removeFirst.
		(response continue includes: next methodID) ifTrue: [ response := next authenticate: user for: service ] ].
	response isSuccess ifFalse: [ self error: 'Authentication failed!' ]