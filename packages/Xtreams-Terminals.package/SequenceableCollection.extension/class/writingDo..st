instance creation
writingDo: aBlock
	| stream |
	stream := self new writing.
	aBlock value: stream.
	^stream
		close;
		destination