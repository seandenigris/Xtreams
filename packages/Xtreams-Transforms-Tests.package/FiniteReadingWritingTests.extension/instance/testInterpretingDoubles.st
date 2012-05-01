tests - interpreting
testInterpretingDoubles
	| doubles result |
	doubles := (1 to: 10) reading collect: [ :i | i reciprocal asDouble ].
	(self output interpreting: #double) write: doubles; close.
	result := (self input interpreting: #double) rest.
	self assert: result = doubles