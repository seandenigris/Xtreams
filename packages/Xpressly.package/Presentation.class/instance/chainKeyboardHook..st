interface opening
chainKeyboardHook: keyboardProcessor

	| oldHook |
	oldHook := keyboardProcessor keyboardHook.	
	keyboardProcessor keyboardHook: [ :ev :ctr |
		(self processKeyEvent: ev) ifNotNil: [
			oldHook
				ifNil: [ ev ]
				ifNotNil: [ oldHook value: ev value: ctr ] ] ].