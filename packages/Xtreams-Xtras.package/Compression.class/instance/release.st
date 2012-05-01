initialize-release
release

	inflating ifTrue: [ library inflateEnd ] ifFalse: [ library deflateEnd ].
	finished := inflating := nil