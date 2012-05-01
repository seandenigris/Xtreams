writing - complex
put: writing variablePool: aPool
	<writes: 'Tools.WorkspaceVariablePool'>

	self put: writing string: aPool importString.
	self marshal: writing object: aPool localBindings