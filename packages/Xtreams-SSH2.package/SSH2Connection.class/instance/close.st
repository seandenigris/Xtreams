api
close

	self isClosed ifFalse: [
		[	self sendMessage: SSH_MSG_DISCONNECT BY_APPLICATION.
		] on: OsTransferFaultError do: [ :ex | "the connection was probably closed already" ] ].
	self release