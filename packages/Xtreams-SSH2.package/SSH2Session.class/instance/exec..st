accessing
exec: command
"Executes a command on the server side and returns the command output. The response ends when the other side signals EOF on the channel.
	command <String>
	^String
"
	| data |
	self send: ((SSH_MSG_CHANNEL_REQUEST id: otherID) exec: command; wantReply: true).
	self maybeReceive: SSH_MSG_CHANNEL_FAILURE do: [ :failure | ^self error: 'Exec rejected!' ].
	self receive: SSH_MSG_CHANNEL_SUCCESS.
	data := self reading.	
	^[	(data encoding: #utf8) rest.
	] ensure: [ data close ].