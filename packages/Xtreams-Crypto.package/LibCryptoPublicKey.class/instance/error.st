private
error

	[	self error: library getError
	] ensure: [ self release ]