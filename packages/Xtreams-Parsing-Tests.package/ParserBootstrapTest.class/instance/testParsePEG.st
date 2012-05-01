tests
testParsePEG
	self assert: (parser parse: 'Grammar' stream: PEG.Parser grammarPEG reading positioning actor: nil) notEmpty.
	self assert: (parser parse: 'Grammar' stream: PEG.Parser grammarPEG reading positioning actor: PEG.ParserParser new) grammar size = 52