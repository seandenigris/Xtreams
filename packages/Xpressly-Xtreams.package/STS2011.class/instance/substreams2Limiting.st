08 substreams
substreams2Limiting
	<slide: 2 title: 'Substreams - limiting:'>

	output := String new writing.
	Number withAllSubclasses do: [ :class |
		[	(output limiting: 40) write: class comment.
		] on: Incomplete do: [ :ex | output -- 3; write: '...' ].
		output cr ].
	output conclusion.