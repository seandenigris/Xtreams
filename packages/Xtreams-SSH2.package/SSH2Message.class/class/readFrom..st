instance creation
readFrom: stream

	^(CodeToMessage at: stream get) new readFrom: stream; yourself