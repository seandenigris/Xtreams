accessing
put: list to: destination using: driver
"Uploads local files specified by @list to remote @destination. The files are collected by the provided @driver. This facility uses simple SCP/RCP protocol in recursive mode and doesn't preserve file timestamps.
	list <String> string listing desired files/paths (separated by spaces)
	destination <String> denotes the target file/directory
	driver <BlockClosure> invoked with an SCP processor providing API to signal entering/exiting a directory and to upload a file from provided source stream
"
	| command scp |
	command := 'scp -r -t -- ', destination.
	self send: ((SSH_MSG_CHANNEL_REQUEST id: otherID) exec: command; wantReply: true).
	self maybeReceive: SSH_MSG_CHANNEL_FAILURE do: [ :failure | ^self error: 'Exec rejected! ', command ].
	self receive: SSH_MSG_CHANNEL_SUCCESS.
	scp := SCP session: self.
	scp checkResponse. "initialize transfer"
	[	driver cull: scp cull: (list tokensBasedOn: Character space)
	] ensure: [ scp close ]