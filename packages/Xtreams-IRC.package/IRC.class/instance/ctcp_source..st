commands - ctcp
ctcp_source: target
	self send: 'PRIVMSG' ctcp: 'SOURCE' from: nil withArguments: (Array with: target) text: nil