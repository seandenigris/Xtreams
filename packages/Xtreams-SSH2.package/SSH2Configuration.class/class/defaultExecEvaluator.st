accessing-channel parameters
defaultExecEvaluator

	^[ :command :output || result |
		result := Compiler evaluate: command.
		(output encoding: #utf8) print: result; cr.
		0 ]