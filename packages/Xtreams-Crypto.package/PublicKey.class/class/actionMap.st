private-action map
actionMap

	^actionMap ifNil: [ self initializeActionMap. actionMap ]