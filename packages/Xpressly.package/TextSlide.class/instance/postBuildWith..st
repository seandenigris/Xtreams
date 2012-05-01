interface opening
postBuildWith: aBuilder

	super postBuildWith: aBuilder.
	(self widgetAt: #text) textStyle: presenter style.
	(self widgetAt: #text) controller
		performer: self;
		supportCodeEditingFeels: true