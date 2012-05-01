testing
testWriteTimeout

	| happened succeeded |
	"Fill up the OS buffer"
	self should: [ (output writing: 100 milliseconds) write: [42] reading ] raise: Timeout.
	
	" test resumption "
	happened := succeeded := false.
	[	(output writing: 100 milliseconds) put: 42.
		succeeded := true
	] on: Timeout do: [ :ex |
		self assert: input reading get = 42.
		happened := true.
		ex resume ].
	self assert: happened.
	self assert: succeeded