private
log: aMessage
	| hash |
	logger == nil ifTrue: [^self].
	hash := String new writeStream.
	self identityHash printOn: hash paddedWith: $0 to: 8 base: 16.
	logger
		cr; print: Time millisecondClockValue;
		space; write: hash contents;
		space; write: aMessage value