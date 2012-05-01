private
authenticate: user for: service

	password := SSH2PasswordRequest signalWith: user.
	^super authenticate: user for: service.