class initialization
initializeEscapeActions

	escapeActions :=
		(Pragma allNamed: #escape: from: self to: SSH2LineEditor)
			inject: Dictionary new into: [ :map :pragma |
				map at: (pragma argumentAt: 1) put: pragma selector;
					yourself ]