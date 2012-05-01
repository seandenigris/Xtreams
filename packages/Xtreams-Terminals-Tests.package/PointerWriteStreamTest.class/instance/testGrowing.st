initialize-release
testGrowing

	self prepareChars.
	50 timesRepeat: [stream put: Character tab].
	stream put: Character tab.
	self assert: (stream terminal at: 50) = Character tab asInteger.
	stream close.
	self assert: stream length = 51