connect / disconnect
disconnect
	output == nil ifTrue: [^self].
	self quit