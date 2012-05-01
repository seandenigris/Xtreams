accessing
parser

	^parser ifNil: [ parser := Parser parserPEG parse: 'Grammar' stream: self grammar actor: ParserParser new ]