08 substreams
substreams6Stitching
	<slide: 6 title: 'Stitching Reads'>
	((1 to: 5) reading, (6 to: 10) reading) rest.
	((1 to: 10) reading limiting: 3) slicing stitching rest.

	files := '..' asFilename reading.
	[	| fn | fn := files get.
		fn isDirectory ifTrue: [ files := fn reading, files ].
		fn
	] reading collect: [ :f | f asString ].

	directories := ElasticBuffer new: 10 class: Array.
	directories put: '..' asFilename.
	[	directories get reading doing: [ :filename |
			filename isDirectory ifTrue: [
				directories put: filename]]
	] reading stitching collect: [ :f | f asString ].