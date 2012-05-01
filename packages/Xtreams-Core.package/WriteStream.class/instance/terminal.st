accessing
terminal
	"Return the object at the bottom of the stream."
	"	^<Collection | Buffer | IOAccessor | BlockClosure>
	"
	^(destination isKindOf: WriteStream)
		ifTrue: [ destination terminal ]
		ifFalse: [ destination ]