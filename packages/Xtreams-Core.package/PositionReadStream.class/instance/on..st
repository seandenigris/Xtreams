initialize-release
on: aSource
	buffer := Buffer new: DefaultBufferSize class: aSource contentsSpecies.
	super on: aSource