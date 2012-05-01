api
session
"Establish a session with the server (see the API on SSH2Session)
"
	| session confirmation |
	session := SSH2Session service: service.
	session register.
	self sendMessage: session openChannelRequest.
	self maybeReceive: SSH_MSG_CHANNEL_OPEN_FAILURE do: [ :failure |
		session deregister.
		^self error: failure description ].
	confirmation := self receive: SSH_MSG_CHANNEL_OPEN_CONFIRMATION.
	session openConfirmed: confirmation.
	^session