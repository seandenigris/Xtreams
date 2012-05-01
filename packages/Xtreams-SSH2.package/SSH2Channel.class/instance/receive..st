private-accessing
receive: expected

	| unexpected |
	unexpected := self maybeReceive: expected do: [ :msg | ^msg ].
	self error: 'Protocol error! ', unexpected printString