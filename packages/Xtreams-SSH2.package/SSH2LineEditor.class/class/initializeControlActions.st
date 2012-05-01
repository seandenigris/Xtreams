class initialization
initializeControlActions

	controlActions :=
		(Pragma allNamed: #control: from: self to: SSH2LineEditor)
			inject: Dictionary new into: [ :map :pragma |
				map at: (pragma argumentAt: 1) put: pragma selector;
					yourself ]