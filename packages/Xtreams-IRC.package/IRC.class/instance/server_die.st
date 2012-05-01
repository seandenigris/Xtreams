commands - optional
server_die
"
   An operator can use the DIE command to shutdown the server.  This
   message is optional since it may be viewed as a risk to allow
   arbitrary people to connect to a server as an operator and execute
   this command.
"
	self send: 'DIE'