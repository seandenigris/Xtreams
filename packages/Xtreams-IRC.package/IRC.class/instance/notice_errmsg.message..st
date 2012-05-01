commands - ctcp
notice_errmsg: target message: message
	self send: 'NOTICE' ctcp: 'ERRMSG' from: nil withArguments: (Array with: target) text: message