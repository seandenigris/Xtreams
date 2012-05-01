commands - ctcp
ctcp_finger: target
	self send: 'PRIVMSG' ctcp: 'FINGER' from: nil withArguments: (Array with: target) text: nil