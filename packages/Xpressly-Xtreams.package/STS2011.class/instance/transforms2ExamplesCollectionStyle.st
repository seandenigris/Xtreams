06 transforms
transforms2ExamplesCollectionStyle
	<slide: 2 title: 'Collection Transforms'>
	random := Random new reading.
	random := random collecting: [ :f | (f * 256) floor ].
	random contentsSpecies: ByteArray.
	random read: 10.

	current := 0.
	integers := [current := current + 1] reading.
	integers read: 10.
	even := integers selecting: [ :i | i even ].
	even read: 10.