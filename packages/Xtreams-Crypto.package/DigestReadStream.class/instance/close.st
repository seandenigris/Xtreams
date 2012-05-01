initialize-release
close

	| saved |
	input ifNil: [^self].
	digest ifNil: [
		[	digest := hash finish.
		] ensure: [ hash release. hash := nil ] ].
	super close.
	saved := input.
	input := nil.
	saved == nil ifFalse: [ saved recycle ].