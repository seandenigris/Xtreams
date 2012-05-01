queries - server
admin: target
"
   The admin command is used to find information about the administrator
   of the given server, or current server if <target> parameter is
   omitted.  Each server MUST have the ability to forward ADMIN messages
   to other servers.
"
	self send: 'ADMIN' with: target