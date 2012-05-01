queries - server
version
"
   The VERSION command is used to query the version of the server
   program.  An optional parameter <target> is used to query the version
   of the server program which a client is not directly connected to.
"
	self send: 'VERSION'