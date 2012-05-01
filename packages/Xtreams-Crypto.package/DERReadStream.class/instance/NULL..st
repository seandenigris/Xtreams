private
NULL: size
	<tag: 5>
	size == 0 ifFalse: [ self error: 'Invalid NULL encoding' ].
	^nil