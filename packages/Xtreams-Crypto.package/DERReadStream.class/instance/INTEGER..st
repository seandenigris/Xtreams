private
INTEGER: size
	<tag: 2>
	| msb result |
	size = 0 ifTrue: [^0 "presumably"].
	"possibly a small integer"
	size < 9 ifTrue: [ | bytes total |
		bytes := source read: size.
		total := 0.
		(bytes first bitAnd: 2r10000000) isZero
			ifTrue: [ bytes do: [ :byte | total := total * 256 + byte ] ]
			ifFalse: [ bytes do: [ :byte | total := total * 256 + (byte bitXor: 255) ].
				total := (total + 1) negated ].
		^total ].
	"definitely a large integer"
	msb := source get.
	(msb bitAnd: 2r10000000) isZero ifTrue: [
		result := LargePositiveInteger basicNew: (msb isZero ifTrue: [ size - 1 ] ifFalse: [ size ]).
		msb isZero ifFalse: [ result basicAt: result basicSize put: msb ].
		size - 1 to: 1 by: -1 do: [ :index | result basicAt: index put: source get ].
		^result ].
	result := LargeNegativeInteger basicNew: (msb == 255 ifTrue: [ size - 1 ] ifFalse: [ size ]).
	msb == 255 ifFalse: [ result basicAt: result basicSize put: (msb bitXor: 255) ].
	size - 1 to: 1 by: -1 do: [ :index | result basicAt: index put: (source get bitXor: 255) ].
	^result - 1