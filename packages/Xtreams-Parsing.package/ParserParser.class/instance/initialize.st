initialize-release
initialize
	super initialize.
	useCache := false.
	parser := Parser new.
	references := Dictionary new