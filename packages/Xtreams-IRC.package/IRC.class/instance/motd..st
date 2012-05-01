queries - server
motd: target
"
   The MOTD command is used to get the 'Message Of The Day' of the given
   server, or current server if <target> is omitted.
"
	self send: 'MOTD' with: target