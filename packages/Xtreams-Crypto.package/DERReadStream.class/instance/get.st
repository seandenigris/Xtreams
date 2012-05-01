accessing
get

	| tag size first |
	tag := source get.
	(tag bitAnd: 2r11000000) isZero ifFalse: [ self error: 'I can handle only universal tags!' ].
	size := ((first := source get) bitAnd: 2r10000000) isZero
		ifTrue: [ "short" first bitAnd: 2r01111111 ]
		ifFalse: [ "long" (source limiting: (first bitAnd: 2r01111111)) inject: 0 into: [ :total :byte | total * 256 + byte ] ].
	^self perform: (actions at: (tag bitAnd: 2r11111)) with: size