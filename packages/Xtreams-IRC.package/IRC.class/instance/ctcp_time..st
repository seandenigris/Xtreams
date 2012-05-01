commands - ctcp
ctcp_time: target
	self send: 'PRIVMSG' ctcp: 'TIME' from: nil withArguments: (Array with: target) text: nil