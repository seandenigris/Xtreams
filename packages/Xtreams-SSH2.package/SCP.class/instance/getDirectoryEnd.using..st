receiving
getDirectoryEnd: msg using: callback

	msg rest. "should be empty"
	^[	| arguments |
		arguments := (Array new: 6) at: 1 put: path; yourself.
		path := callback cullWithArguments: arguments.
		self confirm.
	] on: SCPWarning, SCPError do: [ :ex | ex process: self ]