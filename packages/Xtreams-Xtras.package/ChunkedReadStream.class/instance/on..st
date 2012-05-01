initialize-release
on: aSource
	super on: aSource.
	meta := aSource encoding: #ascii.
	sourceAtEnd := false.
	available := 0