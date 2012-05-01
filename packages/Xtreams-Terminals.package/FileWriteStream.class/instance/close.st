initialize-release
close
	destination isActive ifFalse: [^self].
	destination truncateTo: position.
	destination close