control codes
del
	<control: 127>
	[	line -- 1
	] on: Incomplete do: [ :ex |  ].
	output backspace; flush.
	^true