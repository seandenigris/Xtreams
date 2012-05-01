line-end
setLineEndAuto

	IOAccessor defaultClass = PCIOAccessor
		ifTrue:	[self setLineEndCRLF]
		ifFalse:	[self setLineEndLF]