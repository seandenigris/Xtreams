10 binary
binaryParsing5
	<slide: 3.5 title: 'Parsing'>
"	= Parsing Expression Grammars =
		PEG: character streams only
		Read one character: .
		Read one of many characters: [[a-zA-Z]
		Read a sequence of characters: ''TITLE''

	= Moving beyond...  =
		Grammar Composition
		Compile grammar into bytecode
		   on lightweight class
		Read one character: {character/utf8}
		Read one byte: {integer/unsigned/little}:8
		Read one of many characters in utf16:
			[[a-zA-Z]/utf16
		Read a sequence of characters in utf8:
			''TITLE''/utf8
"