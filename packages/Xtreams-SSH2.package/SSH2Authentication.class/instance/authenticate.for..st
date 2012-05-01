private
authenticate: user for: service 

	| message |
	message := SSH_MSG_USERAUTH_REQUEST new user: user; service: service; authentication: self.
	connection sendMessage: message.
	^connection receive: SSH_MSG_USERAUTH_SUCCESS, SSH_MSG_USERAUTH_FAILURE