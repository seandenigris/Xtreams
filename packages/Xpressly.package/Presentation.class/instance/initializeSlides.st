initialize-release
initializeSlides

	previousSlideIndex := 1.
	slides := SelectionInList with: self refreshedSlides.
	slides selectionIndex: 1.
	slides selectionIndexHolder
		onChangeSend: #slideChanged
		to: self