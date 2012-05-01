tests
testInflate

	| data compressed result compression input output start |
	data := ByteArray new: 500.
	1 to: data size do: [ :i | data at: i put: i \\ 5 ].
	compressed := #[120 156 98 100 98 102 97 96 28 37 70 18 1 0 0 0 255 255 3 0 212 165 3 233].
	input := ByteArray newInFixedSpace: 500.
	output := ByteArray newInFixedSpace: 500.
	result := #[].
	compression := Compression new.
	[	compression inflate.
		start := 1.
		[ start > compressed size ] whileFalse: [ | available |
			available := compressed size - start + 1 min: output size.
			input replaceFrom: 1 to: available with: compressed startingAt: start.
			compression update: available from: input into: output do: [ :in :out |
				result := result, (output copyFrom: 1 to: out).
				in < available ].
			start := start + available ].
		compression finishInto: output do: [ :out | result := result, (output copyFrom: 1 to: out). true ].
		self assert: result = data.
	] ensure: [ compression release ]