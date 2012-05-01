00 introduction
introductionCoreAPI4
	<slide: 7.4 title: 'API'>
"	= seeking"
		stream explore: [stream read: 2].
"			seek within the block, but return to where
			   we were once done"

		stream position. stream position: 4.
"			change the position of the stream"

		stream available.
"			elements left to consume on the stream
			(not to be mistaken with data
			   left in socket buffer)"

		stream length.
"			elements in the stream"