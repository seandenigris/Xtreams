accessing
get: list to: destination using: callback
"Downloads remote files specified by @list into local @destination. This facility uses simple SCP/RCP protocol in recursive mode and doesn't preserve file timestamps.
	list <String> string listing desired files/paths
	destination <String | Filename> denotes the target file/directory
	callback <BlockClosure> called with a number of optional arguments for each directory entred/exited and each received file
"
	| command |
	command := 'scp -r -f -- ', list.
	self send: ((SSH_MSG_CHANNEL_REQUEST id: otherID) exec: command; wantReply: true).
	self maybeReceive: SSH_MSG_CHANNEL_FAILURE do: [ :failure | ^self error: 'Exec rejected! ', command ].
	self receive: SSH_MSG_CHANNEL_SUCCESS.
	(SCP session: self) get: destination using: callback; close