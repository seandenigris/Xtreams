private-server callbacks
exitStatus: status respond: shouldRespond

	shouldRespond ifTrue: [ self send: (SSH_MSG_CHANNEL_SUCCESS id: otherID) ].
	exitStatus value: status