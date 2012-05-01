private-server callbacks
execExpression: command respond: shouldRespond

	service execEvaluator
		ifNil: [ shouldRespond ifTrue: [ service send: (SSH_MSG_CHANNEL_FAILURE id: otherID) ] ]
		ifNotNil: [ :evaluator || status output |
			shouldRespond ifTrue: [ service send: (SSH_MSG_CHANNEL_SUCCESS id: otherID) ].
			output := self writing.
			[	status := evaluator value: command value: self writing
			] ensure: [ output close ].
			self send: (
				(SSH_MSG_CHANNEL_REQUEST id: otherID)
					exitStatus: status;
					wantReply: false) ]