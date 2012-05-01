analyse - complex
analyse: reading variablePool: aClass
	<analyse: 'Tools.WorkspaceVariablePool'>

	reading log: ['variable pool'] do:
		[reading log: 'import' do: [self get: reading string: String].
		reading log: 'bindings' do: [self analyse: reading]].