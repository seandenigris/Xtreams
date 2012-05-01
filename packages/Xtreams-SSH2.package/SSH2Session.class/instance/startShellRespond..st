private-server callbacks
startShellRespond: shouldRespond

	service shellEvaluator ifNil: [ ^shouldRespond ifTrue: [ service send: (SSH_MSG_CHANNEL_FAILURE id: otherID) ] ].
	shouldRespond ifTrue: [ self send: (SSH_MSG_CHANNEL_SUCCESS id: otherID) ].
	worker := [ | in out line editor |		
		in := self reading encoding: #utf8.
		out := (self writing encoding: #utf8) setLineEndCRLF.
		editor := pty asLineEditorInput: in output: out.
		[	(line := editor readLine) notNil
		] whileTrue: [ | result |
			result := [ service shellEvaluator value: line ] on: Error do: [ :ex | ex ].
			out cr; write: result printString; flush ].
		in close. out close. self close
	] newProcess.
	worker name: ('SSH2 Worker, channel <1p>, shell' expandMacrosWith: id);
		environment: ProcessEnvironment current newSubEnvironment;
		resume