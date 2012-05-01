rules
Sum: first rest: rest
	<action: 'Sum' arguments: #(1 2)>
	^rest inject: first into: [ :total :next |
		(next first = '+') ifTrue: [ total + next last ] ifFalse: [ total - next last ] ]