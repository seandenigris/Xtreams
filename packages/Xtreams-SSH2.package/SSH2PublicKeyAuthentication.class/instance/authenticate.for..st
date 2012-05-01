private
authenticate: user for: service

	signature :=
		connection configuration keys
			sign: (self contentToSignUser: user service: service)
			with: key.
	^super authenticate: user for: service