private-server callbacks
pty: request respond: shouldRespond

	shouldRespond ifTrue: [ self send: (SSH_MSG_CHANNEL_SUCCESS id: otherID) ].
	pty := request.