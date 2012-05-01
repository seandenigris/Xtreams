private
LargePositiveInteger: value
	<class: 'Core.LargePositiveInteger'>
	| size |
	destination put: 2. "tag"
	size := value digitLength.
	(value highBit \\ 8) isZero
		ifTrue: [ self putLength: size + 1. destination put: 0. "need to pad with zero at the front" ]
		ifFalse: [ self putLength: size ].
	size to: 1 by: -1 do: [ :i | destination put: (value basicAt: i) ]