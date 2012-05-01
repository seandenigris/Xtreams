private
contentToSignUser: user service: service

	| stream |
	stream := ByteArray new writing ssh2Marshaling.
	stream putString: connection session_id;
		put: SSH_MSG_USERAUTH_REQUEST msgID;
		putString: user encoding: #utf8;
		putString: service encoding: #ascii;
		putString: self methodID encoding: #ascii;
		putBoolean: true;
		putString: algorithm encoding: #ascii;
		putString: key bytes.
	^stream close; terminal