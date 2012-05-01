api
openQueueAt: name port: port

	(self queueAt: name port: port) ifNotNil: [ self error: 'Queue is already open!' ].
	self sendMessage: ((SSH_MSG_GLOBAL_REQUEST forward address: name port: port) wantReply: true; yourself).
	self maybeReceive: SSH_MSG_REQUEST_FAILURE do: [ :msg | ^nil ].
	self receive: SSH_MSG_REQUEST_SUCCESS.
	^super openQueueAt: (self queueNameFrom: name port: port)