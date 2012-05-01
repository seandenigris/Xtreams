converting
reading: timeout
"Create read stream with timeout support.
	timeout <Duration> reads will wait at most @timeout for incoming data
	^<ExternalTimeoutReadStream>
"
	^(ExternalTimeoutReadStream on: self)
		timeout: timeout;
		yourself