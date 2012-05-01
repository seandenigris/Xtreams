converting
reading
	| context |
	(context := self class new) sender: self.
	^[	context := context sender.
		context == nil ifTrue: [Incomplete raise].
		context
	] reading