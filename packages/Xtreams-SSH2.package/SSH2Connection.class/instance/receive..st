private-accessing
receive: expected

	| unexpected |
	unexpected := self maybeReceive: expected do: [ :msg | ^msg ].
	unexpected class == SSH_MSG_DISCONNECT ifFalse: [
		self sendMessage: (
			SSH_MSG_DISCONNECT PROTOCOL_ERROR
				description: 'Unexpected message ', unexpected printString) ].
	self release.
	self error: 'Protocol error! ', unexpected printString