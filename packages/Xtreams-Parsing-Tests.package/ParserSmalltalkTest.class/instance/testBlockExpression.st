initialize-release
testBlockExpression

	| expression tree |
	expression := '[super ++ (anInteger - skipped)] on: Incomplete do: [ :ex | ex pass ]'.
	tree := parser parse: 'Expression' stream: expression reading actor: NodeBuilder new.
	(tree at: 2) size = expression size