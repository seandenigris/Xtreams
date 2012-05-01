private-server callbacks
unsupported: msg respond: shouldRespond

	shouldRespond ifTrue: [ self send: (SSH_MSG_CHANNEL_FAILURE id: otherID) ]