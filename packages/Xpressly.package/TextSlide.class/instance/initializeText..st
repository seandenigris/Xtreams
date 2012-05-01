initialize-release
initializeText: source

	| comment lines |
	(source ending: '<slide:') -= 0.
	(source ending: '>\' withCRs) -= 0.

	comment := true.
	lines := (source ending: $") slicing collecting: [:slice |
		(comment := comment not)
			ifTrue: [ SlideGenerator process: slice positioning ]
			ifFalse: [ self highlightSourceCode: slice ]].
	lines := lines rejecting: [:each | each isEmpty].

	text := Text new.
	lines
		do: [:line |
			line first = Character cr
				ifTrue: [text := text, (line allButFirst: 1)]
				ifFalse: [text := text, line]].
	text := text asValue.