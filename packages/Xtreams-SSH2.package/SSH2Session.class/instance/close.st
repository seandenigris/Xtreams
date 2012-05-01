initialize-release
close

	super close.
	Processor activeProcess == worker ifTrue: [
		"The worker is running the close, we can't really kill it, let's hope it cleans up after itself."
		^self ].
	worker ifNotNil: [ :process | worker := nil. process terminate ].