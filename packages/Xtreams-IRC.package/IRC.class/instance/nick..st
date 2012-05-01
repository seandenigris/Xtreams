commands - connection
nick: nickname
"
   NICK command is used to give user a nickname or change the existing
   one.
"
	self send: 'NICK' with: nickname