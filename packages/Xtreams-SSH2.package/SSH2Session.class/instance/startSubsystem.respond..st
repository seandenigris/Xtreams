private-server callbacks
startSubsystem: name respond: shouldRespond

	| action |
	action := service subsystems
		at: name	
		ifAbsent: [
			shouldRespond ifFalse: [ ^self ].
			self send: (SSH_MSG_CHANNEL_FAILURE id: otherID).
			^self ].
	worker := [ action value: self ] newProcess.
	worker name: ('SSH2 Worker, channel <2p>, subsystem <1s>' expandMacrosWith: name with: id);
		environment: ProcessEnvironment current newSubEnvironment;
		resume.
	shouldRespond ifTrue: [ service send: (SSH_MSG_CHANNEL_SUCCESS id: otherID) ]