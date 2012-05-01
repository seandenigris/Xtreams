private-server callbacks
env: name value: value respond: shouldRespond

	service execEvaluator
		ifNil: [ shouldRespond ifTrue: [ service send: (SSH_MSG_CHANNEL_FAILURE id: otherID) ] ]
		ifNotNil: [ shouldRespond ifTrue: [ self send: (SSH_MSG_CHANNEL_SUCCESS id: otherID) ].
			ProcessEnvironment current at: name asSymbol put: value ]