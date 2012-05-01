initialize-release
on: aDestination
	super on: aDestination.
	meta := aDestination encoding: #ascii.
	meta setLineEndCRLF