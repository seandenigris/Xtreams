commands - ctcp
notice_time: target
	self send: 'NOTICE' ctcp: 'TIME' from: nil withArguments: (Array with: target) text: Timestamp now printString