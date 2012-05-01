private
readData: size from: source

	| accepted |
	accepted := size min: incomingWindow.
	dataInSync critical: [ dataInWriting write: accepted from: source ].
	accepted < size ifTrue: [ source ++ (size - accepted) ].