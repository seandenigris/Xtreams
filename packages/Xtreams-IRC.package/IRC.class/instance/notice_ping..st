commands - ctcp
notice_ping: target
	self send: 'NOTICE' ctcp: 'PING' from: nil withArguments: (Array with: target) text: Timestamp now printString