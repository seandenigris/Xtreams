accessing-channel parameters
execEvaluator: evaluator
"The @evaluator is a two argument block that gets the command <String> and a stream to write the output into. It returns a SmallInteger that will be the exit status.
	evaluator <BlockClosure>
"
	execEvaluator := evaluator