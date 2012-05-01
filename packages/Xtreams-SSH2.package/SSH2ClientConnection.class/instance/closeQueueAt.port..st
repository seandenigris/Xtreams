api
closeQueueAt: name port: port

	(self queueAt: name port: port) ifNil: [ ^self error: 'Queue is not open!' ].
	self sendMessage: ((SSH_MSG_GLOBAL_REQUEST cancel_forward address: name port: port) wantReply: false; yourself).
	super closeQueueAt: (self queueNameFrom: name port: port).