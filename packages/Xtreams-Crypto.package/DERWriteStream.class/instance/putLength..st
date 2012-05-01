private
putLength: length

	| size |
	length < 128 ifTrue: [ destination put: length. ^self ].
	size := length digitLength.
	destination put: (size bitOr: 128).
	-8 * (size - 1) to: 0 by: 8 do: [ :shift |
		destination put: ((length bitShift: shift) bitAnd: 255) ]