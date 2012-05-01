08 substreams
substreams4Slicing
	<slide: 4 title: 'Slicing'>
"	= reading"
		input := 'xtreams.cha' asFilename reading.
		input := input encoding: #utf8.
		[	lines := (input ending: Character cr) slicing.
			(lines ++ 10000; get) rest
		] ensure: [ input close ].
	
"	= writing"
		output := String new writing.
		blurbs := (output limiting: 40) slicing.
		Number withAllSubclasses do: [ :class |
			[	blurbs get write: class comment.
			] on: Incomplete do: [ :ex | output -- 3; write: '...' ].
			output cr ].
		output conclusion.