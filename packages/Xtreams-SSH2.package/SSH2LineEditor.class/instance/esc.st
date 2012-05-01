control codes
esc
	<control: 27>
	| c |
	(c := input get) = $[ ifTrue: [ self CSI. ^true ].
	Log space; print: c; print: input get.
	^true