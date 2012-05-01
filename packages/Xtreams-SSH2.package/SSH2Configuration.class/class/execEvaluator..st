accessing-channel parameters
execEvaluator: evaluator
"The @evaluator is a two argument block that gets the command <String> and a stream to write the output into. It returns a SmallInteger that will be the exit status. If the evaluator is nil, that effectively disables command execution (the server will send a request failure back).
	evaluator <BlockClosure | nil> 
"
	execEvaluator := evaluator