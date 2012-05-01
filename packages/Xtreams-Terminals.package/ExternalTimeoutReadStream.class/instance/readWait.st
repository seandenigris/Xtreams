private
readWait

	[	(source readWaitWithTimeoutMs: timeout) ifFalse: [^self].
		Timeout raiseSignal
	] repeat