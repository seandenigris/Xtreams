10 binary
binaryParsing2
	<slide: 3.2 title: 'Parsing'>
"	= Parsing Expression Grammars"

	grammar := 
		'Sentence	<- Whitespace? (Word / Punctuation)* [.]
		Word		<- [a-zA-Z'']+
		Punctuation <- [,;:()]'.

	sentenceParser := PEG.Parser parserPEG
		parse: 'Grammar'
		stream: grammar
		actor: PEG.ParserParser new