events
processKeyEvent: ev

	| key |
	key := ev keyValue.
	(#(PageUp) includes: key) ifTrue: [ self previousSlide. ^nil ].
	(#(PageDown) includes: key) ifTrue: [ self nextSlide. ^nil ].
	ev hasCtrl ifTrue: [
		key = #Home ifTrue: [ self firstSlide. ^nil ].
		key = #End ifTrue: [ self lastSlide. ^nil ] ].
	key = #F1 ifTrue: [ self goToSlide. ^nil].
	key = #F5 ifTrue: [ self refresh ].
	^ev