06 transforms
transforms3ExamplesEncoding
	<slide: 3 title: 'Character Encoding'>

	input := 'xtreams.cha' asFilename reading.
	input := input encoding: #utf8.
	input read: 50.
	input close.

	(#[13 10 10 13] reading encoding: #ascii) rest.
	(ByteArray new writing encoding: #ascii)
		cr; conclusion