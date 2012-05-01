accessing
read: count into: sequence

	(library RAND_bytes: sequence with: count) == 1 ifFalse: [
		self error: library ERR_get_error ].
	^count