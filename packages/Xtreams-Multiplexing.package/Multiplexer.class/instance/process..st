private - receiving
process: type
	type = ChannelOpen ifTrue: [^self processChannelOpen].
	type = ChannelClose ifTrue: [^self processChannelClose].
	type = ChannelMore ifTrue: [^self processChannelMore].
	self processChannelData: type