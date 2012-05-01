initialize-release
release

	self isClosed ifTrue: [^self].
	self stopReader.
	queues do: [ :queue | queue isString ifFalse: [ [ queue isEmpty ] whileFalse: [ queue next close ] ] ].
	in close.
	sendLock critical: [ 
		[ out close ] on: OsTransferFaultError do: [ :ex |
			"the connection was probably closed by the other side already" ].
		socket ifNotNil: [ socket close ].
		outMarshaling := nil ]