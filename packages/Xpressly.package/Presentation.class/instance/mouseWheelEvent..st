events
mouseWheelEvent: anEvent
	anEvent up
		ifTrue: [self previousSlide]
		ifFalse: [self nextSlide]