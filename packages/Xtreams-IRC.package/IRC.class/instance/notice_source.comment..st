commands - ctcp
notice_source: target comment: comment
	self send: 'NOTICE' ctcp: 'SOURCE' from: nil withArguments: (Array with: target) text: comment