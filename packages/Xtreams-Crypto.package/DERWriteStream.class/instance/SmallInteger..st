private
SmallInteger: value
	<class: 'Core.SmallInteger'>
	| size complement |
	destination put: 2. "tag"
	value isZero ifTrue: [ destination put: 0. ^self ].
	value > 0 ifTrue: [
		size := value digitLength.
		(value highBit \\ 8) isZero ifTrue: [ size := size + 1 "need to pad with zero at the front" ].
		self putLength: size.
		(size - 1) * -8 to: 0 by: 8 do: [ :i | destination put: ((value bitShift: i) bitAnd: 255) ].
		^self ].
	value = -1 ifTrue: [ destination write: #[1 255]. ^self ].
	complement := -1 - value.
	size := complement digitLength.
	(complement highBit \\ 8) isZero ifTrue: [ size := size + 1 "need to pad with 255 at the front" ].
	self putLength: size.
	(size - 1) * -8 to: 0 by: 8 do: [ :i | destination put: (((complement bitShift: i) bitAnd: 255) bitXor: 255) ]