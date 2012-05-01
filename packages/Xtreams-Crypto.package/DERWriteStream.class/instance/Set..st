private
Set: value
	<class: 'Core.Set'>
	| size |
	destination put: 49. "tag (constructed)"
	value size isZero ifTrue: [ destination put: 0. ^self ].
	size := value inject: 0 into: [ :total :each | total + (self sizeOf: each) ].
	self putLength: size.
	value do: [ :each | self put: each ]