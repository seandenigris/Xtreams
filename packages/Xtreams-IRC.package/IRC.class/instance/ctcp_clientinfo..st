commands - ctcp
ctcp_clientinfo: target
	self send: 'PRIVMSG' ctcp: 'CLIENTINFO' from: nil withArguments: (Array with: target) text: nil