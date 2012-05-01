private-sizing
sizeOfInteger: value
	<sizeOf: 'Core.SmallInteger'>
	<sizeOf: 'Core.LargePositiveInteger'>
	<sizeOf: 'Core.LargeNegativeInteger'>
	| size bits |
	value isZero ifTrue: [ ^2 "#[2 0]" ].
	bits := value > 0 ifTrue: [ value ] ifFalse: [ -1 - value ].
	size := bits digitLength.
	(bits highBit \\ 8) isZero ifTrue: [ size := size + 1 "need to pad at the front" ].
	^1 "tag" + (self sizeOfLength: size) + size