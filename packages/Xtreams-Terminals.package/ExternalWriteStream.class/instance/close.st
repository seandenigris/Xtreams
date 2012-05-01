initialize-release
close
	destination isActive ifFalse: [^self].
	destination streamingWriteClose