commands - ctcp
ctcp_version: target
	self send: 'PRIVMSG' ctcp: 'VERSION' from: nil withArguments: (Array with: target) text: nil