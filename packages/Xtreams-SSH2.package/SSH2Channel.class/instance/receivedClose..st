private
receivedClose: msg

	service deregister: self.
	closing
		ifTrue: [ self queueMessage: msg ]
		ifFalse: [ closing := true.
			service send: (SSH_MSG_CHANNEL_CLOSE id: otherID) ].