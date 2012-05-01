private-sizing
sizeOfConstructed: value
	<sizeOf: 'Core.OrderedCollection'>
	<sizeOf: 'Core.Array'>
	<sizeOf: 'Core.Set'>
	| size |
	size := value inject: 0 into: [ :total :each | total + (self sizeOf: each) ].
	^1 "tag" + (self sizeOfLength: size) + size