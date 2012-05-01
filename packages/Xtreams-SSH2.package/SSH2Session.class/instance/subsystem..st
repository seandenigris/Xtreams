accessing
subsystem: name
"Activates a subsystem on the channel (e.g. sftp). After that the data communication on the channel carries whatever protocol the subsystem supports.
	name <String> name of the subsystem
"
	self send: ((SSH_MSG_CHANNEL_REQUEST id: otherID) subsystem: name; wantReply: true).
	self maybeReceive: SSH_MSG_CHANNEL_FAILURE do: [ :failure | ^self error: 'Subsystem setup failed! ', name ].
	self receive: SSH_MSG_CHANNEL_SUCCESS.