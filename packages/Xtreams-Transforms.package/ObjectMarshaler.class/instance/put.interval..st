writing - complex
put: writing interval: interval
	<writes: 'Core.Interval'>

	self marshal: writing object: interval first.
	self marshal: writing object: interval last.
	self marshal: writing object: interval increment