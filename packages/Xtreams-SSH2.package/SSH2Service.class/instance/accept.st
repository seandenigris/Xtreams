private
accept

	connection sendMessage: (
		SSH_MSG_DISCONNECT PROTOCOL_ERROR description: 'User must be authenticated to request service ', self serviceID).
	connection release