private
writeWait

	[	(destination writeWaitWithTimeoutMs: timeout) ifFalse: [^self].
		Timeout raiseSignal
	] repeat