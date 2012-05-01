06 transforms
transforms7ExamplesMorseEncoding
	<slide: 7 title: 'Morse Code Encoding'>
	(String new writing
		transforming: [ :in :out |
			out write: (Morse at: in get);
				space  ]
	)	write: 'SMALLTALK';
		conclusion