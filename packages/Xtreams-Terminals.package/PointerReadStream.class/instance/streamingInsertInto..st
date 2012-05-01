private
streamingInsertInto: aWriteStream
	^length
		ifNil: [ self error: 'Cannot stream from an unbounded stream' ]
		ifNotNil: [ super streamingInsertInto: aWriteStream ]