actions
refresh
	"We've been told that our class has changed, so update the running presentation"

	| selectionIndex refreshedSlides |
	selectionIndex := slides selectionIndex.
	refreshedSlides := self refreshedSlides.
	selectionIndex > refreshedSlides size ifTrue: [selectionIndex := 1].
	slides setList: refreshedSlides selecting: (refreshedSlides at: selectionIndex)