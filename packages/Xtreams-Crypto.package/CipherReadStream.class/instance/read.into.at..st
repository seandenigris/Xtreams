accessing
read: totalRequested into: target at: initialStart

	| requested start read inputAtEnd |
	"make sure anything pending in the output buffer is completely consumed"
	(read := self outputCopy: totalRequested into: target at: initialStart) = totalRequested ifTrue: [^self].
	requested := totalRequested - read.
	start := initialStart + read.
	inputAtEnd := false.
	[	| nibble |	
		read := requested min: maxInputChunk.
		"Round to nearest block size"
		(nibble := read \\ blockSize) == 0 ifFalse: [ read := read - nibble + blockSize ].
		read := [ source read: read into: input at: 1. read ] on: Incomplete do: [ :ex | inputAtEnd := true. ex count ]. 
		unconsumed := read > 0
			ifTrue: [ cipher update: read from: input into: output ]
			ifFalse: [ cipher finishInto: output ].
		read := self outputCopy: requested into: target at: start.
		start := start + read.
		(requested := requested - read) > 0 and: [ inputAtEnd not ]
	] whileTrue.
	requested > 0 ifTrue: [ (Incomplete on: target count: totalRequested - requested at: initialStart) raise ].
	^totalRequested