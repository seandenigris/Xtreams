commands - ctcp
ctcp_ping: target
	self send: 'PRIVMSG' ctcp: 'PING' from: nil withArguments: (Array with: target) text: nil