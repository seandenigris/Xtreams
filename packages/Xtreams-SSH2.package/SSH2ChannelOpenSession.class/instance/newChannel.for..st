accessing
newChannel: msg for: service

	| session |
	service isClient ifTrue: [ "Client SHOULD reject session requests from the server."
		service send: (SSH_MSG_CHANNEL_OPEN_FAILURE ADMINISTRATIVELY_PROHIBITED id: msg id).
		^self].
	session := SSH2Session service: service.
	session register.
	service send: (session openChannelConfirmationTo: msg)