private
LargeNegativeInteger: value
	<class: 'Core.LargeNegativeInteger'>
	| size complement |
	destination put: 2. "tag"
	complement := -1 - value. "this is guaranteed to be large positive int"
	size := complement digitLength.
	(complement highBit \\ 8) isZero
		ifTrue: [ self putLength: size + 1. destination put: 255 "need to pad at the front" ]
		ifFalse: [ self putLength: size ].
	size to: 1 by: -1 do: [ :i | destination put: ((complement basicAt: i) bitXor: 255) ]