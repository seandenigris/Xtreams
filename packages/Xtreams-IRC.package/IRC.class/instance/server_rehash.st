commands - optional
server_rehash
"
   The rehash command is an administrative command which can be used by
   an operator to force the server to re-read and process its
   configuration file.
"
	self send: 'REHASH'