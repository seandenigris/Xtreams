tests
testParentheses

	self assert: (ArithmeticEvaluator new parse: '(3+4)*3+4') = 25