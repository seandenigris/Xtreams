initialize-release
initialize

	self initializeLocals.
	self initializeSlides.
	style := self class style.
	titleStyle := self class style.
	#{Tools.StyleDescription} ifDefinedDo: [ :sd |
		sd stylesDictionary keysAndValuesDo: [ :key :value | style characterAttributes at: key put: value ] ].