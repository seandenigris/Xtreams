initialize-release
flush
	destination isActive ifFalse: [^self].
	destination commit