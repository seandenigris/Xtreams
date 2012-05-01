initialize-release
highlightSourceCode: source

	| sourceString sourceText |
	sourceString := String new writing.
	(source ending: Character cr) slicing do: [:lineStream |
		| line |
		line := lineStream rest.
		(line notEmpty and: [line first = Character tab])
			ifTrue: [sourceString write: line size - 1 from: line at: 2]
			ifFalse: [sourceString write: line]]
		separatedBy: [sourceString cr].
	sourceText := Text string: sourceString conclusion emphasis: #code.
	#{Refactory.CodeHighlighter.CodeHighlightingParser} ifDefinedDo: [ :parser | parser formatExpression: sourceText for: presenter class ].
	^sourceText