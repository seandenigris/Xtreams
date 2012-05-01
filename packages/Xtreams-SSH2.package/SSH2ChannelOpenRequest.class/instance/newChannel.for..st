accessing
newChannel: msg for: service

	service send: (SSH_MSG_CHANNEL_OPEN_FAILURE UNNKOWN_CHANNEL_TYPE id: msg id).
	^nil