private
Sequence: value
	<class: 'Core.OrderedCollection'>
	<class: 'Core.Array'>
	| size |
	destination put: 48. "tag (constructed)"
	value size isZero ifTrue: [ destination put: 0. ^self ].
	size := value inject: 0 into: [ :total :each | total + (self sizeOf: each) ].
	self putLength: size.
	value do: [ :each | self put: each ]