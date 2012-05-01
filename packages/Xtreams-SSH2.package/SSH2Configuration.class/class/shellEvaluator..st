accessing-channel parameters
shellEvaluator: evaluator
"The @evaluator is a single argument block that gets the expression line <String> and returns the result. A printString of the result is sent back. If evaluator is nil it disables shell support.
	evaluator <BlockClosure>
"
	shellEvaluator := evaluator