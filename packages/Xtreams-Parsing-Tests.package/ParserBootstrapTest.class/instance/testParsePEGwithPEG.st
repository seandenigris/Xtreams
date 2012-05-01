tests
testParsePEGwithPEG
	parser := parser parse: 'Grammar' stream: PEG.Parser grammarPEG reading positioning actor: PEG.ParserParser new.
	self testParsePEG