accessing
env: name value: string
"Set an environment variable in the server side execution environment. Usually preceeds an exec: action.
"
	self send: (
		(SSH_MSG_CHANNEL_REQUEST id: otherID)
			env: name value: string;
			wantReply: false).
	^nil