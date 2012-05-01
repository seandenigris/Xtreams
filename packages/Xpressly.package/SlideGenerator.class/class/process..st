utilities
process: input
"Convert input into an xhtml XML document.
""	input	<ReadStream>	text with wiki markup
	^		<XML.Element>
""
	self process: 'Single paragraph with *bold* and _italic_ text and a [link]' reading
"
	^self parser parse: 'Page' stream: input actor: self new