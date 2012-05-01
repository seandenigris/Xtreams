initialize-release
testReadingFloats

	| stream |
	self prepareFloats.
	stream := pointer reading.
	stream length: values size.
	self assert: stream rest = values.
	self should: [ stream get ] raise: Incomplete.