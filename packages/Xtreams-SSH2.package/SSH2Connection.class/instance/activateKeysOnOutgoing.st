private-key exchange
activateKeysOnOutgoing

	session_id ifNil: [ session_id := kex h ].
	self sendMessage: SSH_MSG_NEWKEYS new.