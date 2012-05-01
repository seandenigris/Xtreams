interface opening
postOpenWith: aBuilder

	self boundsChanged.
	self slideChanged.
	[self mainWindow refresh] uiEventFor: self mainWindow