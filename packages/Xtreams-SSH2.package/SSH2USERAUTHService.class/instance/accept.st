private-server
accept

	| authentications |
	connection sendMessage: (SSH_MSG_SERVICE_ACCEPT new service: self serviceID).
	authentications := connection configuration userauthMethods.
	MaxAuthenticationRequests timesRepeat: [	| request authentication |
		request := connection receive: SSH_MSG_USERAUTH_REQUEST.
		authentication := request authentication connection: connection.
		((authentications includes: authentication methodID)
		and: [ authentication verify: request user for: request service ])
			ifTrue: [ connection sendMessage: SSH_MSG_USERAUTH_SUCCESS new.
				connection startService: request service.
				^self ]
			ifFalse: [ "we probably should be removing methods from authentications, but publickey may need to try multiple keys."
				connection sendMessage: (
					SSH_MSG_USERAUTH_FAILURE new
						partialSuccess: false;
						continue: authentications) ] ].
	self error: 'Exceeded number of allowed authentication requests!'