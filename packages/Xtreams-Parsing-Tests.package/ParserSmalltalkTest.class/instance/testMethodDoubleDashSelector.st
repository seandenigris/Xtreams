initialize-release
testMethodDoubleDashSelector

	| expression tree |
	expression := '-- count	^count'.
	tree := parser parse: 'Method' stream: expression reading actor: NodeBuilder new.
	(tree at: 2) size = expression size