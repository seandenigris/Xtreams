initialize-release
close

	| saved |
	output ifNil: [^self].
	compression release.
	super close.
	saved := input.
	input := nil.
	saved == nil ifFalse: [ saved recycle ].
	saved := output.
	output := nil.
	saved == nil ifFalse: [ saved recycle ].