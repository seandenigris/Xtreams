queries - server
time: target
"
   The time command is used to query local time from the specified
   server. If the <target> parameter is not given, the server receiving
   the command must reply to the query.
"
	self send: 'TIME' with: target