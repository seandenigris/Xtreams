interface opening
postBuildWith: aBuilder

	builder window damageRepairPolicy: DoubleBufferingWindowDisplayPolicy new.
	self chainKeyboardHook: aBuilder keyboardProcessor.
	builder windowSpec bounds extent: self class resolution.
	self mainWindow when: #bounds send: #boundsChanged to: self.
	self mainWindow when: #MouseWheelEvent send: #mouseWheelEvent: to: self.