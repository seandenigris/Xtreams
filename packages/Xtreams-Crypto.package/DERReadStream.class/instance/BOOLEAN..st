private
BOOLEAN: size
	<tag: 1>
	self size == 1 ifFalse: [ self error: 'Invalid BOOLEAN encoding' ].
	^self get isZero not