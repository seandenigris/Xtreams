events
slideChanged
	| transition |
	transition := [].
	previousSlideIndex < slides selectionIndex ifTrue: [transition := [self transitionSlideDownRight]].
	previousSlideIndex > slides selectionIndex ifTrue: [transition := [self transitionSlideLeft]].
	previousSlideIndex := slides selectionIndex.

	self updateScale.
	self updateSlide: transition.
	self updateTitle.