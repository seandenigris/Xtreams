private
printTo: gc style: style at: origin

	(ComposedText withText: self text value style: style fontPolicy: gc fontPolicy)
		displayOn: gc at: origin