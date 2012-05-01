actions
goToSlide

	(Dialog choose: 'Go to slide'
		fromList: (slides list collect: [ :p | p title ])
		values: (1 to: slides list size)
		lines: 30
		cancel: [ nil ]
	) ifNotNil: [ :index | slides selectionIndex: index ]