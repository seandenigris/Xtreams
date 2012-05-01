initialize-release
close

	output ifNil: [^self].
	[	| available |
		available := 0.
		unconsumed > 0 ifTrue: [
			unconsumed \\ blockSize > 0 ifTrue: [ self error: 'Last block is incomplete!' ].
			available := cipher update: unconsumed from: input into: output.
			unconsumed := 0 ].
		available := available + (cipher finishInto: output).
		destination write: available from: output at: 1.
	] ensure: [ | saved |
		cipher release.
		super close.
		saved := input.
		input := nil.
		saved == nil ifFalse: [ saved recycle ].
		saved := output.
		output := nil.
		saved == nil ifFalse: [ saved recycle ] ]