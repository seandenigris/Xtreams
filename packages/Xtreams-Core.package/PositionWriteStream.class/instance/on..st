initialize-release
on: aDestination
	buffer := Buffer new: DefaultBufferSize class: aDestination contentsSpecies.
	super on: aDestination