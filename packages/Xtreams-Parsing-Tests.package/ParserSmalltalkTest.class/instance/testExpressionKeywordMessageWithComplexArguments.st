initialize-release
testExpressionKeywordMessageWithComplexArguments

	| expression tree |
	expression := 'aSequenceableCollection replaceFrom: startIndex to: startIndex + tail - 1 with: cache startingAt: read + 1'.
	tree := parser parse: 'Method' stream: expression reading actor: NodeBuilder new.
	(tree at: 2) size = expression size