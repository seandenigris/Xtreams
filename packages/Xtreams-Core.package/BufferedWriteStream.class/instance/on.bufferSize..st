initialize-release
on: aDestination bufferSize: bufferSize
	buffer := Buffer new: bufferSize class: aDestination contentsSpecies.
	super on: aDestination