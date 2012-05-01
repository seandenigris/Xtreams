commands - ctcp
ctcp_userinfo: target
	self send: 'PRIVMSG' ctcp: 'USERINFO' from: nil withArguments: (Array with: target) text: nil