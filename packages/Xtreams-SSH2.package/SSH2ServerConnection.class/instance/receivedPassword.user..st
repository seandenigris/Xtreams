private-services
receivedPassword: password user: user

	^passwordValidator isNil or: [ passwordValidator value: user value: password ]