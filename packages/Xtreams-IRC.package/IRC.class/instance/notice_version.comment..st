commands - ctcp
notice_version: target comment: comment
	self send: 'NOTICE' ctcp: 'VERSION' from: nil withArguments: (Array with: target) text: comment