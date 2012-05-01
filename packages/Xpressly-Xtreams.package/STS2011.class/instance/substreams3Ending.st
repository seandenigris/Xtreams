08 substreams
substreams3Ending
	<slide: 3 title: 'Substreams - ending:'>

	output := String new writing.
	Number withAllSubclasses do: [ :class |
		[	(output ending: $. inclusive: true)
				write: class comment
		] on: Incomplete do: [].
		output cr ].
	output conclusion