tests
testValidatePEG
	self assert: (parser validate: 'Grammar' stream: PEG.Parser grammarPEG reading positioning)