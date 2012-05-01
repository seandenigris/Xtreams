private-server callbacks
exec: command respond: shouldRespond

	worker := [
		(command beginsWith: 'scp -')
			ifTrue: [ self execSCP: command respond: shouldRespond ]
			ifFalse: [ self execExpression: command respond: shouldRespond ].
	] newProcess.
	worker name: ('SSH2 Worker, channel <2p>, exec: <1s>' expandMacrosWith: command with: id);
		environment: ProcessEnvironment current newSubEnvironment;
		resume