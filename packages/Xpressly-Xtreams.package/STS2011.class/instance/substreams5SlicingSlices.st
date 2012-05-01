08 substreams
substreams5SlicingSlices
	<slide: 5 title: 'Slices of Slices'>
"	= reading"
		input := 'aaa#bb#c##!1#22#33#444' reading.
		messages := (input ending: $!) slicing.
		parts := (messages get ending: $#) slicing.
		parts collect: [ :p | p rest ].

"	= writing"
		output := String new writing.
		messages := (output closing: [ output put: $! ])
			slicing.
		#((aa bb cc dd ee) (xxx yy z)) do: [ :m |
			message := messages get.
			parts := (message closing: [ message put: $# ])
				slicing.
			m do: [ :p | parts get write: p ] ].
		output conclusion