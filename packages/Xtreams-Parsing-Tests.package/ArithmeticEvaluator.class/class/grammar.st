accessing
grammar
	^'
	Number <- [0-9]+
	Parenthesised <- "(" Expr ")"
	Value <- Number / Parenthesised
	Product	<- Value (("*" / "/") Value)*
	Sum <- Product (("+" / "-") Product)*
	Expr <- Sum
	'