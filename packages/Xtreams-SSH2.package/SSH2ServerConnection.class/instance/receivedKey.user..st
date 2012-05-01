private-services
receivedKey: key user: user

	^keyValidator isNil or: [ keyValidator value: key value: user ]