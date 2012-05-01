common
warn: message

	out put: 1 asCharacter; write: message; cr; flush.
	^SCPWarning raiseRequestErrorString: message