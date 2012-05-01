00 introduction
introductionCoreAPI3
	<slide: 7.3 title: 'API'>
"	= seeking"
		positionable := stream positioning.
"			transform a non-positionable stream in to
			   a positionable stream"

		stream ++ 200.
"			seek forward from where we are"

		stream -- 200.
"			seek backward from where we are"

		stream += 200.
"			seek forward from the start of the stream"

		stream -= 0. "(skip to end)
			seek backward from the end of the stream"