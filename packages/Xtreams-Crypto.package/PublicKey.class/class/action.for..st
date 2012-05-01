private-action map
action: action for: algorithm

	| actions |
	actions := self actionMap at: algorithm ifAbsent: [
		self error: self name, ' does not support ', algorithm ].
	^actions at: action ifAbsent: [
		self error: self name, ' does not provide action ', action, ' for ', algorithm ].