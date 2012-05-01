accessing
parser
"
	parser := nil
"
	^parser ifNil: [
		parser :=
			Parser parserPEG
				parse: 'Grammar'
				stream: Parser grammarWiki reading
				actor: ParserParser new ]