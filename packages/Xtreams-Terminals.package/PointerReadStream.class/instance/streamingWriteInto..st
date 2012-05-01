private
streamingWriteInto: aWriteStream
	^length
		ifNil: [ self error: 'Cannot stream from an unbounded stream' ]
		ifNotNil: [ super streamingWriteInto: aWriteStream ]