menus
xtreamsLogToTranscript

	<itemInMenu: #(menuBar xtreams) position: 5.5>
	^(UI.MenuItem labeled: 'Log To Transcript')
		indication: [ self xtreamsIsLogging ];
		value: [ Log := self xtreamsIsLogging ifTrue: [ nil writing ] ifFalse: [ Transcript writing ] ]