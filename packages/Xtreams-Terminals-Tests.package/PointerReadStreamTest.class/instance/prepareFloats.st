initialize-release
prepareFloats

	values := (1 to: 50) collect: [ :i | i reciprocal asFloat ].
	pointer := CLimitedPrecisionRealType float malloc: values size.
	1 to: values size do: [ :i | pointer at: i - 1 put: i reciprocal asFloat ].